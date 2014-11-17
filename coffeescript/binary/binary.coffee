class Binary
  constructor: (@stringValue)->
  toDecimal: ->
    return 0 unless @stringValue.match /[01]+/
    @stringValue.split('').reverse().reduce (sum, char, index)->
      sum + parseInt(char) * Math.pow(2, index)
    , 0

module.exports = Binary
