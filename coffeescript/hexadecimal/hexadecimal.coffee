class Hexidecimal
  constructor: (@hexString)->
  isInvalid: ->
    /[^0-9a-f]/.test @hexString
  toDecimal: ->
    return 0 if @isInvalid()
    valueMap = '0123456789abcdef'
    @hexString.split('').reverse().reduce (sum, item, index)->
      sum + valueMap.indexOf(item) * Math.pow(16, index)
    , 0

module.exports = Hexidecimal
