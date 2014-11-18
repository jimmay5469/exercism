class Binary
  constructor: (@stringValue)->
  isValid: ->
    @stringValue.match /[01]+/
  toDecimal: ->
    return 0 unless @isValid()
    @stringValue.split('').reverse().reduce (sum, char, index)->
      sum + parseInt(char) * Math.pow(2, index)
    , 0

module.exports = Binary
