class Hexidecimal
  constructor: (@hexString)->
  toDecimal: ->
    @hexString.split('').reverse().reduce((sum, item, index)->
      sum + parseInt(item, 16) * Math.pow(16, index)
    , 0) || 0

module.exports = Hexidecimal
