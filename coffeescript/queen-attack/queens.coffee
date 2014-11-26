class Queens
  constructor: (@input={})->
    @white = @input.white ? [0,3]
    @black = @input.black ? [7,3]
    throw 'Queens cannot share the same space' if "#{@white}" == "#{@black}"
  toString: ->
    boardArray = for row in [0..7]
      rowArray = for column in [0..7]
        retval = null
        retval = 'W' if @white[0] == column and @white[1] == row
        retval = 'B' if @black[0] == column and @black[1] == row
        retval ? 'O'
      rowArray.join ' '
    boardArray.join '\n'
  canAttack: ->
    @white[0]==@black[0] or @white[1]==@black[1] or Math.abs(@white[0]-@black[0])==Math.abs(@white[1]-@black[1])


module.exports = Queens
