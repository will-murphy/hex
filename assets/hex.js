// Generated by CoffeeScript 1.10.0
var CONFIG, Game, TEMPLATE, Tile, a, debug, game, generateBoard, generateRow, generateTile, historyToJSON, tiles;

debug = function(string) {
  console.log(string);
  return $('#log').text($('#log').text() + '\n' + string);
};

CONFIG = {
  EPSILON: 1e-100,
  SERVER: document.origin,
  ALPHABET: 'abcdefghijklmnopqrstuvwxyz',
  HUMAN_COLOR: 'black',
  COMPUTER_COLOR: 'white',
  TIME_TO_WAIT_AFTER_FAILED_REQUEST: 100
};

TEMPLATE = {
  ROW: _.template("<div class=row></div>"),
  TILE: _.template("<!--\n---><div class=hex>\n        <div class=in></div>\n        <div class=in></div>\n        <div class=in></div>\n    </div>"),
  GENMOVE_URL: _.template('/genmove?password=<%= encodeURIComponent(password) %>&moves=<%= encodeURIComponent(moves) %>')
};

historyToJSON = function(history) {
  return history.map(function(move) {
    return {
      color: move.color,
      move: move.tile.name
    };
  });
};

Tile = function(element, i, j) {
  this.element = element;
  this.name = CONFIG.ALPHABET[i] + String(j + 1);
  this.element.click((function(_this) {
    return function() {
      if (game.turn === CONFIG.HUMAN_COLOR && _this.capturedBy === void 0) {
        game.turn = CONFIG.COMPUTER_COLOR;
        _this.capture(CONFIG.HUMAN_COLOR);
        return game.playComputerMove();
      }
    };
  })(this));
};

Tile.fromName = function(name) {
  var i, j;
  i = CONFIG.ALPHABET.indexOf(name[0]);
  j = -1 + Number(name.slice(1));
  return tiles[i][j];
};

Tile.prototype.capture = function(color) {
  debug('Capture me for ' + JSON.stringify(color));
  this.element.addClass(color);
  this.capturedBy = color;
  return game.history.push({
    color: color,
    tile: this
  });
};

Game = function() {
  this.history = [];
  this.turn = CONFIG.HUMAN_COLOR;
};

a = void 0;

Game.prototype.playComputerMove = function(move) {
  var moves, password, url;
  debug('playComputerMove');
  debug(move);
  if (move !== undefined) {
    debug(Tile.fromName(move.move));
    Tile.fromName(move.move).capture(move.color);
    debug(Tile.fromName(move.move));
    return this.turn = CONFIG.HUMAN_COLOR;
  } else {
    password = 'Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL';
    moves = JSON.stringify(historyToJSON(game.history));
    console.log(moves);
    url = TEMPLATE.GENMOVE_URL({
      password: password,
      moves: moves
    });
    return $.get(url, (function(_this) {
      return function(data) {
        debug(data);
        debug(JSON.parse(data));
        return _this.playComputerMove(JSON.parse(data));
      };
    })(this)).fail((function(_this) {
      return function(e) {
        a = arguments;
        debug('Failed. Trying again...');
        return setTimeout((function() {
          return _this.playComputerMove();
        }), CONFIG.TIME_TO_WAIT_AFTER_FAILED_REQUEST);
      };
    })(this));
  }
};

generateRow = function() {
  return $(TEMPLATE.ROW());
};

generateTile = function() {
  return $(TEMPLATE.TILE());
};

generateBoard = function(n, board) {
  var fn, i, k, ref, result;
  result = [];
  fn = function() {
    var fn1, j, l, ref1, row, rowTiles;
    row = generateRow();
    board.append(row);
    rowTiles = [];
    fn1 = function() {
      var tile;
      tile = generateTile();
      if (i / 2 - 0.5 - CONFIG.EPSILON <= j && j <= i / 2 - 1 + n + CONFIG.EPSILON) {
        rowTiles.push(tile);
      } else {
        tile.addClass('space');
      }
      return row.append(tile);
    };
    for (j = l = 0, ref1 = 2 * n; 0 <= ref1 ? l < ref1 : l > ref1; j = 0 <= ref1 ? ++l : --l) {
      fn1();
    }
    return result.push(rowTiles);
  };
  for (i = k = 0, ref = n; 0 <= ref ? k < ref : k > ref; i = 0 <= ref ? ++k : --k) {
    fn();
  }
  return result;
};

tiles = void 0;

game = new Game();

$(document).ready(function() {
  tiles = generateBoard(11, $('.board'));
  tiles = tiles.map(function(tileRow, i) {
    return tileRow.map(function(tile, j) {
      return new Tile(tile, i, j);
    });
  });
  return debug(tiles);
});

window.onload = () => {
let y = [{"color":"white","move":"e6"},{"color":"white","move":"a1"},{"color":"white","move":"b1"},{"color":"white","move":"e1"},{"color":"white","move":"b5"},{"color":"white","move":"b6"},{"color":"white","move":"b7"},{"color":"white","move":"b8"},{"color":"white","move":"c4"},{"color":"white","move":"c8"},{"color":"white","move":"d4"},{"color":"white","move":"d5"},{"color":"white","move":"d6"},{"color":"white","move":"e7"},{"color":"white","move":"e8"},{"color":"white","move":"d9"},{"color":"white","move":"f3"},{"color":"white","move":"f4"},{"color":"white","move":"f8"},{"color":"white","move":"g2"},{"color":"white","move":"g4"},{"color":"white","move":"g5"},{"color":"white","move":"g6"},{"color":"white","move":"g8"},{"color":"white","move":"g9"},{"color":"white","move":"h2"},{"color":"white","move":"h7"},{"color":"white","move":"i2"},{"color":"white","move":"i5"},{"color":"white","move":"i6"},{"color":"white","move":"i7"},{"color":"white","move":"j3"},{"color":"white","move":"j8"},{"color":"black","move":"a5"},{"color":"black","move":"a6"},{"color":"black","move":"a7"},{"color":"black","move":"a8"},{"color":"black","move":"a9"},{"color":"black","move":"b4"},{"color":"black","move":"b1"},{"color":"black","move":"c2"},{"color":"black","move":"c3"},{"color":"black","move":"c5"},{"color":"black","move":"c6"},{"color":"black","move":"c7"},{"color":"black","move":"c9"},{"color":"black","move":"d7"},{"color":"black","move":"d8"},{"color":"black","move":"e3"},{"color":"black","move":"e4"},{"color":"black","move":"e5"},{"color":"black","move":"e9"},{"color":"black","move":"f5"},{"color":"black","move":"f6"},{"color":"black","move":"f7"},{"color":"black","move":"g3"},{"color":"black","move":"h3"},{"color":"black","move":"h4"},{"color":"black","move":"h5"},{"color":"black","move":"h6"},{"color":"black","move":"h8"},{"color":"black","move":"i4"},{"color":"black","move":"i8"},{"color":"black","move":"j4"},{"color":"black","move":"j5"},{"color":"black","move":"j6"}]
y.map((move) => game.playComputerMove(move))
};
