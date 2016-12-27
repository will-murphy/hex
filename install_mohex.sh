#!/bin/bash
#
# Author: Fabien Viger
# Last tested by the author on 2016-04-13 on Ubuntu 14.04

set -e
set -x

# For AWS, install:
# subversion
# git
# javac something
# gpp
# g++
# make

sudo apt-get update
sudo apt-get -y install subversion git gpp g++ make ant autoconf libboost-all-dev libdb-dev subversion git openjdk-7-jdk

# First, build hex-gui. This is easy: it's nice, portable java.
# If the repository disappeared, you can fetch a snapshot that worked from
# https://drive.google.com/file/d/0B5aGEZRviuRvM1F5allQNTdqWm8/view?usp=sharing
# git clone git://git.code.sf.net/p/benzene/hexgui benzene-hexgui
cd benzene-hexgui
ant
cd ..

# Now, build "benzene" and "fuego". The fun begins. Again, you can fetch snapshots from
# https://drive.google.com/file/d/0B5aGEZRviuRvYk9uQmZuUVAzOUk/view?usp=sharing (benzene) and
# https://drive.google.com/file/d/0B5aGEZRviuRvQ1ZYejRtQkhtbUU/view?usp=sharing (fuego r2002)
# git clone git://benzene.git.sourceforge.net/gitroot/benzene/benzene
cd benzene
svn co https://fuego.svn.sourceforge.net/svnroot/fuego/trunk fuego -r2002
# Patch the autoconf configuration file. Essentially what this is doing is:
# - 'manually' add required boost and berkeley DB libraries for the C++ linker.
# - removing all the AX_BOOST_ requirements.
# - the rest are optional (I *think*), cosmetic warning removals
echo -n 's@AX_BOOST_THREAD.*@LIBS="-lboost_program_options -lboost_system' > /tmp/sed
echo ' -lboost_filesystem -lpthread -lboost_thread -ldb"@g' >> /tmp/sed
echo '/AX_BOOST_[^B]/d' >> /tmp/sed
echo 's@AX_BOOST_BASE.*@AX_BOOST_BASE([1.54.0])@g'  >> /tmp/sed  # Optional, I think
echo 's@AM_INIT_AUTOMAKE$@AM_INIT_AUTOMAKE(subdir-objects)@g' >> /tmp/sed  # Optional, I think
echo 's@AC_LINK_IFELSE(\[int@AC_LINK_IFELSE([AC_LANG_SOURCE([int@g' >> /tmp/sed  # Optional, I think
echo 's@a, 1, 2);}\],@a, 1, 2);}])],@g' >> /tmp/sed  # Optional, I think. Goes with the above line.
sed -i -f /tmp/sed configure.ac fuego/configure.ac
cd fuego
autoreconf -i
./configure
make # -j 8
cd ..
autoreconf -i

# Patch the source code. Ugly.
sed -i 's@native_file_string@native@g' src/util/Misc.cpp
sed -i 's@, native).branch@).parent@g' src/util/Misc.cpp
sed -i 's@boost::TIME_UTC@1@g' src/mohex/MoHexEngine.cpp src/wolve/WolveEngine.cpp
sed -i 's@float& value) = 0;@float\& value) {}@g' fuego/smartgame/SgBookBuilder.h

# Successively build the mohex11, mohex13, mohex14 and mohex19 versions.
# This takes a while.
for i in 11 13 14 19; do
  ./configure --with-fuego-root=$PWD/fuego --enable-upto${i}x${i}=yes
  make clean
  make # -j 8
  mv src/mohex/mohex mohex$i
  # Generate the swap table. I did my best... The pattern coded below
  # corresponds to the solved 8x8 board, but not to the 9x9.
  # See http://webdocs.cs.ualberta.ca/~hayward/papers/pawlhayw.pdf.
  # But the sub-optimal swaps (or non-swaps) are probably acceptable options.
  echo "N=$i
for y in range(N):
  for x in range(N):
    swap=((x>0 and x<N-1 and y>1 and y<N-2) or
          (x+y==N-1) or
          ((x==0 or x==N-1) and abs(x-y) in [N-4, N-2]))
    print '%s%dx%d %c%d' % ('' if swap else '#',N,N,chr(x+ord('a')),y+1)"\
  | python >> share/swap-moves.txt
  echo "" >> share/swap-moves.txt
done

cd ..

set +x
echo ""
echo "______________________________________________________"
echo ""
echo " \o/ \o/ \o/ \o/ \o/  SUCCESS !!! \o/ \o/ \o/ \o/ \o/ "
echo "______________________________________________________"
echo ""
echo "To play hex, run the following:"
echo "  benzene-hexgui/bin/hexgui"
echo ""
echo "Then 'Edit' > 'Preferences' > enable the 2 tickboxes 'Auto-respond' (so"
echo "that the AI automatically plays) and 'Show Analyze on Program Connect'."
echo ""
echo "Then 'Edit' > 'Board Size' > pick your favorite size."
echo ""
echo "Then on the menu, click 'Program' > 'New Program...'"
echo "  -> in the program name, type 'mohex13' (not important)"
echo "  -> in the command line, type '$PWD/benzene/mohex13'"
echo "     (that one is important), without the quotes."
echo ""
echo "That version can play to boards up to 13x13, but will be weaker on an"
echo "11x11 board than mohex11."
echo "You can repeat the same process for mohex11, mohex14, mohex19."
echo ""
echo "Then 'Program' > 'Connect local program...' -> pick one of the programs"
echo "that you added"
echo ""
echo "IMPORTANT: after connecting the program, double-click on 'Game Param' in"
echo "           the 'Analyze' window that should have come up, and:"
echo "           - Tick 'Allow swap'"
echo "           - Set a reasonable game time (for the whole game)"
echo ""
echo "There are more parameters on the 'settings' icon, some of them won't work."
echo ""
echo "ENJOY!"

