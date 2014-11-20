class Hexidecimal
  constructor: (@hexString)->
  isInvalid: ->
    /[^0-9a-f]/.test @hexString
  toDecimal: ->
    return 0 if @isInvalid()
    valueMap = '0123456789abcdef'
    digitToDecimal = (digit)-> valueMap.indexOf digit
    @hexString.split ''
    .map digitToDecimal
    .reduce (sum, item)-> 16 * sum + item

module.exports = Hexidecimal
