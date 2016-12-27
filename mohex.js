
function last(thing) {
    return thing[thing.length - 1];
}

let spawn = require('child_process').spawn;

function Mohex(seed = Mohex.seed()) {
    let self = this;
    
    self.humanColor = 'black';
    self.computerColor = 'white';

    self.process = spawn('./benzene/mohex11', ['--seed', seed]);

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

Mohex.isStdoutMove = function (string) {
    console.log(JSON.stringify(string));
    console.log(string.match(/^=\ (..)\n\n$/));
    console.log(null !== string.match(/^=\ (..)\n\n$/));
    return null !== string.match(/^=\ (..)\n\n$/);
}

Mohex.stdoutToMove = function (string) {
    console.log(JSON.stringify(string));
    return string.match(/^=\ (..)\n\n$/)[1];
}

Mohex.prototype.input = function (string, completed) {
    console.log('Inputting...');
    console.log(string);
    console.log(JSON.stringify(string));
    console.log(this.process.stdin.writable);
    this.process.stdin.write(string + '\n', completed);
}

Mohex.prototype.playHumanMove = function (move, completed) {
    let self = this;

    self.input('play ' + self.humanColor + ' ' + move, function () {
        self.process.stdout.once('data', function (data) {
            console.log('data');
            console.log(data);
            completed();
        });
    });
}

Mohex.prototype.playMoves = function (moves, completed) {
    this.input(
        moves
	    .map(({color, move}) => 
	        `play ${color} ${move}`)
    	    .join('\n'),
        completed);
//    this.playMovesHelper(moves, () => {
//        console.log('playMoves done');
//        this.process.stdout.once('data', completed)});
}

Mohex.prototype.playMovesHelper = function (moves, completed) {
    if (moves.length === 0) {
        completed();
    } else {
        this.playMove(moves[0].color, moves[0].move, () =>
            this.playMovesHelper(moves.slice(1), completed));
    }
}

Mohex.prototype.playMove = function (color, move, completed) {
    this.input('play ' + color + ' ' + move, completed);
}

Mohex.prototype.playComputerMove = function (completed) {
    this.input('genmove ' + this.computerColor, () => {
        let callback = () => {
            if (Mohex.isStdoutMove(last(this.log.stdout))) {
                this.process.stdout.removeListener('data', callback);
                completed(Mohex.stdoutToMove(last(this.log.stdout)));
            }
        }
        this.process.stdout.on('data', callback);
    });
}

Mohex.prototype.kill = function () {
    this.process.kill('SIGINT');
};

module.exports.Mohex = Mohex
