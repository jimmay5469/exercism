class Queens
  constructor: (@input={})->
    @white = @input.white ? [0,3]
    @black = @input.black ? [7,3]
    throw 'Queens cannot share the same space' if "#{@white}" == "#{@black}"
  toString: ->
    board = [0..7].map -> [0..7].map -> 'O'
    board[@white[1]][@white[0]] = 'W'
    board[@black[1]][@black[0]] = 'B'
    board.map((item)-> item.join ' ').join '\n'
  canAttack: ->
    @white[0]==@black[0] or @white[1]==@black[1] or Math.abs(@white[0]-@black[0])==Math.abs(@white[1]-@black[1])


module.exports = Queens
