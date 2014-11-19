class Trinary
  constructor: (@stringTrinary)->
  isValid: ->
    @stringTrinary.match /[0-2]+/
  toDecimal: ->
    return 0 unless @isValid()
    @stringTrinary.split('').reverse().reduce (sum, item, index)->
      sum + parseInt(item) * Math.pow(3, index)
    , 0

module.exports = Trinary
