class Queens
  constructor: (@input={})->
    @white = @input.white ? [0,3]
    @black = @input.black ? [7,3]

module.exports = Queens
