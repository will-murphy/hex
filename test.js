console.log('here');

let 乐天 = 3;
let {Mohex} = require('./mohex.js');
// let mohex = new Mohex();
// console.log(mohex);
let moves = [{"color":"black","move":"f6"},{"color":"white","move":"f5"},{"color":"black","move":"g5"},{"color":"white","move":"h3"},{"color":"black","move":"d6"},{"color":"white","move":"j2"},{"color":"black","move":"e4"},{"color":"white","move":"e6"},{"color":"black","move":"d7"},{"color":"white","move":"f2"},{"color":"black","move":"d3"}];

let mohex = {};
mohex.process = require('child_process').spawn('./benzene/mohex11');
let stdout = '';
mohex.process.stdout.on('data', (data) => {
    data = data.toString();
    console.log('data');
    console.log(JSON.stringify(data));
    stdout += data; });

let completed = (...args) => {
    console.log('completed');
    console.log(args);
};

//setInterval((() => {
//    console.log(mohex.process.stdout)}),
//    1000);

let input = "play black f6\nplay white f5\nplay black g5\nplay white h3\nplay black d6\nplay white j2\nplay black e4\nplay white e6\nplay black d7\nplay white f2\nplay black d3\ngenmove white";

mohex.process.stdin.write(input + '\n', completed);

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
