//console.log('here');

let 乐天 = 3;
let {Mohex} = require('./mohex.js');
// let mohex = new Mohex();
// console.log(mohex);
let moves = [{"color":"black","move":"f6"},{"color":"white","move":"f5"},{"color":"black","move":"g5"},{"color":"white","move":"h3"},{"color":"black","move":"d6"},{"color":"white","move":"j2"},{"color":"black","move":"e4"},{"color":"white","move":"e6"},{"color":"black","move":"d7"},{"color":"white","move":"f2"},{"color":"black","move":"d3"}];

let DEBUG = false;
let p = (...args) => DEBUG ? console.log(...args) : undefined;

let mohex = (moves, callback) => {
    let mohex = {};
    mohex.process = require('child_process').spawn('./benzene/mohex11');
    let stdout = '';
    mohex.process.stdout.on('data', (data) => {
	data = data.toString();
	p('data')
	p(JSON.stringify(data));
	let match = data.match(/= ([a-z][0-9]{1,2})\n\n/);
	if (match !== null) {
	    let computerMove = match[1];
            p('done');
	    p(computerMove);
	    callback(computerMove);
	    mohex.process.kill();
	}
	stdout += data; 
    });

    /*
    let completed = (...args) => {
	console.log('completed');
	console.log(args);
    };
    */

    //let input = "play black f6\nplay white f5\nplay black g5\nplay white h3\nplay black d6\nplay white j2\nplay black e4\nplay white e6\nplay black d7\nplay white f2\nplay black d3\ngenmove white";
    let input = moves
        .map((move) => `play ${move.color} ${move.move}`)
        .concat(['genmove white'])
        .join('\n');

    //console.log(input);
    mohex.process.stdin.write(input + '\n'); //, completed);
};

let express = require('express');
let app = express();
let PORT = Number(process.argv[2] || '80');

let logCommunication = (string) => {
    console.log((new Date()) + ' ' + string);
};

app.get('/genmove', (req, res) => {
    logCommunication('GET /genmove');
    let moves = JSON.parse(req.query.moves);
    console.log(moves);
    mohex(moves, (move) => {
	let out = JSON.stringify({ move: move, color: 'white' });
	logCommunication('Respond: ' + out);
	res.send(out)})});

app.use(express.static('assets'));

app.get('/', (req, res) => {
    logCommunication('GET /');
    res.sendFile('/home/ubuntu/assets/hex.html')});

app.get('/kill', (req, res) => {
    res.send('Killing...');
    process.exit()});

app.listen(PORT, () => {
  console.log('Example app listening on port ' + PORT + '!');
});

// mohex(moves, (move) => console.log(move));

//setInterval((() => {
//    console.log(mohex.process.stdout)}),
//    1000);

/*
    mohex.input(
        moves
            .map(({color, move}) =>
		         `play ${color} ${move}`)
            .concat(['genmove white'])
            .join('\n'),
        completed);
*/

/*
        mohex.playMoves(moves.slice(0, 1), () =>
            mohex.playComputerMove((move) => {
		console.log('playComputerMove done');
                console.log(move);
                mohex.kill();
            }));
*/
