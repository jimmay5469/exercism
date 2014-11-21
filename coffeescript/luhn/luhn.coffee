class Luhn
  @create: (input)->
    luhnInput = input*10
    luhn = new Luhn(luhnInput)
    if luhn.isValid()
      luhnInput
    else
      luhnInput + 10 - luhn.getModTen()
  constructor: (@input)->
    Object.defineProperty @, 'checkDigit', get: @getCheckDigit
    Object.defineProperty @, 'addends', get: @getAddends
    Object.defineProperty @, 'checksum', get: @getChecksum
    Object.defineProperty @, 'valid', get: @isValid
  getReverseNumberArray: ->
    @input.toString().split('').map((item)-> parseInt(item)).reverse()
  getCheckDigit: ->
    @getReverseNumberArray()[0]
  getAddends: ->
    @getReverseNumberArray().map((item, index)->
      if index % 2 == 0
        item
      else if item < 5
        item*2
      else
        item*2-9
    ).reverse()
  getChecksum: ->
    @getAddends().reduce (sum, item)-> sum + item
  getModTen: ->
    @getChecksum() % 10
  isValid: ->
    @getModTen() == 0

module.exports = Luhn
