nodejs server.js
node
node
node
node
node
node
node
node
node
node
node
node
node -v
nodde
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y nodejs
node -v
node
node
node
node
node
node
node
node
node
let spawn = require('child_process').spawn;
function Mohex() {     let self = this;          self.humanColor = 'black';     self.computerColor = 'white';     self.process = spawn('./benzene/mohex11', ['--seed', Mohex.seed()]);
    self.log = {
        stderr: [],
        stdout: [],
    };
    
    self.process.stderr.on('data', function (data) {
        self.log.stderr.push(data.toString());
    });
    self.process.stdout.on('data', function (data) {
        self.log.stdout.push(data.toString());
    });
    self.closed = false;
    self.process.on('close', function (code) {
        self.closed = true;
        self.closedCode = code;
    });
}
Mohex.seed = function () {
    return String(Math.floor(Math.random() * 1e10));
}
Mohex.prototype.input = function (string, completed) {
    this.process.stdin.write(string + '\n', completed);
}
Mohex.prototype.playHumanMove = function (move, onComputerMove) {
    let self = this;
    self.input('play ' + this.humanColor + ' ' + move, function () {
        self.input('genmove ' + this.computerColor, function () {
            console.log(JSON.stringify(self.log));
        });
    });
}
Mohex.prototype.playComputerMove = function (move) {
    this.input('genmove ' + this.computerColor);
}
let mohex = new Mohex();
mohex
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node -i mohex.js
node -i server.js
node -i
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
node
tail server.js
tail server.js
tail server.js
node server.js
node
node
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
curl localhost:3000/?password
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=[]
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=[]
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=[]
clear
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%5D
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%5D
curl localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%5D
curl localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL
jobs
jobs
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?moves=%5B%5D&password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D'
ls
./benzene/mohex13
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%5D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%5D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%5D'
curl 'localhost:3000/?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%5D'
node server.js
clear
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
node server.js
./mohex13
./benzene/mohex13
./benzene/mohex13 --boardsize 13
./benzene/mohex13 --boardsize 13
./benzene/mohex13 --boardsize 119
./benzene/mohex13 --boardsize 19
./benzene/mohex13 --boardsize 13
./benzene/mohex19 --boardsize 13
./benzene/mohex19 --boardsize 19
./benzene/mohex19 --boardsize 19
./benzene/mohex13
./benzene/mohex13 --boardsize 13 --seed 12345
ls benzene
node server.js
node server.js
clear
node server.js
clera
clear
node server.js
sudo apt-get watch
sudo apt-get install watch
watch
watch -n0 sudo node server.js
while true do sudo node server.js end
function repeat { while 1 ; do "$@" ; sleep 1 ; done; }
repeat sudo node server.js
function repeat { while true ; do "$@" ; sleep 1 ; done; }
repeat sudo node server.js
repeat sudo node server.js
history | grep repeat
clear
ls
clear
function repeat { while 1 ; do "$@" ; sleep 1 ; done; }
repeat sudo node server.js
function repeat { while true ; do "$@" ; sleep 1 ; done; }
repeat sudo node server.js
jobs
sudo node server.js
ps aux | grep node
ps aux | grep node
kill 22009
kill 22008
sudo kill 22008
sudo kill 22009
ps aux | grep node
repeat sudo node server.js
clear
clear
ls
history | repeat
history | grep repeat
function repeat { while true ; do "$@" ; sleep 1 ; done; }
repeat sudo node server.js
repeat sudo node server.js
repeat sudo node server.js
repeat sudo node server.js
jobs
jobs
ps aux | grep node
ls
clear
clear
ls
clear
clear
emacs ~/.bash_profile
history | grep function
emacs ~/.bash_profile
repeat
repeat node server.js
repeat sudo node server.js
repeat sudo node server.js
repeat sudo node server.js
jobs
tmux attach
repeat sudo node server.js
ls
ls'
exit
repeat sudo node server.js
repeat sudo node server.js
ls
jobs
repeat sudo node server.js
ls
rm -rf bomb
ls
./benzene/mohex11
ls
emacs mohex.js 
./benzene/mohex11
repeat sudo node server.js
ifconfig
repeat sudo node server.js
ls
jobs
tmux
man tmux
tmux attach
tmux attach
repeat sudo node server.js
curl localhost:80/
curl localhost:80/
curl localhost:80/
curl localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
clear
curl localhost:80
ls
emacs mohex.js
emacs mohex.js
emacs server.js
emacs mohex.js
node
node test.js
emacs test.js
emacs test.js
emacs test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
emacs test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
./benzene/mohex11
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
./benzene/mohex11
./benzene/mohex11
./benzene/mohex11
./benzene/mohex11
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
./benzene/mohex11
./benzene/mohex11
./benzene/mohex11
time ./benzene/mohex11
sudo node server.js
sudo node server.js
sudo node server.js
sudo node server.js
sudo node server.js
sudo node server.js
sudo node server.js
sudo node server.js
repeat sudo node server.js
sudo node server.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
node test.js
ls
node test.js
time node test.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
parallel time node direct.js ::: 0 1 2 3
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js
time node direct.js 80
jobs
jobs
time node direct.js 80
time node direct.js 80
time node direct.js 80
time node direct.js 8000
history | grep curl
curl 'localhost/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
curl 'localhost:8000/genmove?password=Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL&moves=%5B%7B%22color%22%3A%22black%22%2C%22move%22%3A%22f6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f5%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22g5%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22h3%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d6%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22j2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22e4%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22e6%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d7%22%7D%2C%7B%22color%22%3A%22white%22%2C%22move%22%3A%22f2%22%7D%2C%7B%22color%22%3A%22black%22%2C%22move%22%3A%22d3%22%7D%5D'
