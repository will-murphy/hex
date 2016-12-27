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
  j = -1 + Number(name[1]);
  return tiles[i][j];
};

Tile.prototype.capture = function(color) {
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
  if (move !== void 0) {
    Tile.fromName(move.move).capture(move.color);
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