
debug = (string) ->
    console.log(string)
    $('#log').text($('#log').text() + '\n' + string)


CONFIG =
    EPSILON: 1e-100
    SERVER: document.origin
    ALPHABET: 'abcdefghijklmnopqrstuvwxyz'
    HUMAN_COLOR: 'black'
    COMPUTER_COLOR: 'white'
    TIME_TO_WAIT_AFTER_FAILED_REQUEST: 100

TEMPLATE = 
    ROW: _.template("""<div class=row></div>""")
    TILE: _.template("""<!--
    ---><div class=hex>
            <div class=in></div>
            <div class=in></div>
            <div class=in></div>
        </div>""")
    GENMOVE_URL: _.template('/genmove?password=<%= encodeURIComponent(password) %>&moves=<%= encodeURIComponent(moves) %>')

historyToJSON = (history) ->
    history.map((move) -> 
        return {
            color: move.color
            move: move.tile.name
        })

Tile = (element, i, j) ->
    this.element = element
    this.name = CONFIG.ALPHABET[i] + String(j + 1)
    this.element.click(=>
        if game.turn is CONFIG.HUMAN_COLOR and this.capturedBy is undefined
            game.turn = CONFIG.COMPUTER_COLOR
            this.capture(CONFIG.HUMAN_COLOR)
            game.playComputerMove())
    return

Tile.fromName = (name) ->
    i = CONFIG.ALPHABET.indexOf(name[0])
    j = -1 + Number(name[1])
    return tiles[i][j]

Tile.prototype.capture = (color) ->
    this.element.addClass(color)
    this.capturedBy = color
    game.history.push(
        color: color
        tile: this)

Game = ->
    this.history = []
    this.turn = CONFIG.HUMAN_COLOR
    return

a = undefined

Game.prototype.playComputerMove = (move) ->
    if move isnt undefined
        Tile.fromName(move.move).capture(move.color)
        this.turn = CONFIG.HUMAN_COLOR
    else
        password = 'Xe3KhwHMy3UK86JJM6zfLcLyZuhVCwPUTpHRNrRQcq8SxuefF6Maa99j46HbNyeawXpBnEPCK8eHsEJrMWQuKWsfwWgPjmZJEpA9uzSuFQM48CKRw8dyD6VL'
        moves = JSON.stringify(historyToJSON(game.history))
        console.log(moves)
        url = TEMPLATE.GENMOVE_URL({ password: password, moves: moves })
        $.get(url, (data) =>
            debug(data)
            debug(JSON.parse(data))
            this.playComputerMove(JSON.parse(data)))
         .fail((e) =>
            a = arguments
            debug('Failed. Trying again...')
            setTimeout(
                (=> this.playComputerMove()),
                CONFIG.TIME_TO_WAIT_AFTER_FAILED_REQUEST))

generateRow = -> $(TEMPLATE.ROW())

generateTile = -> $(TEMPLATE.TILE())

generateBoard = (n, board) ->
    result = []
    for i in [0...n]
        do ->
            row = generateRow()
            board.append(row)
            rowTiles = []
            for j in [0...(2 * n)]
                do ->
                    tile = generateTile()
                    if i / 2 - 0.5 - CONFIG.EPSILON <= j and j <= i / 2 - 1 + n + CONFIG.EPSILON
                        rowTiles.push(tile)
                    else
                        tile.addClass('space')
                    row.append(tile)
            result.push(rowTiles)
    result

tiles = undefined
game = new Game()

$(document).ready(->
    tiles = generateBoard(11, $('.board'))
    tiles = tiles.map((tileRow, i) ->
        tileRow.map((tile, j) ->
            new Tile(tile, i, j)))
    debug(tiles))
