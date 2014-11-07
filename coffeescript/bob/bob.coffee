class Bob
  isYell: ->
    @input.match(/[A-Z]/) && @input.toUpperCase() == @input
  isQuestion: ->
    @input.slice(-1) == '?'
  isSilence: ->
    @input.trim() == ''

  hey: (input)->
    @input = input
    if @isYell()
      'Whoa, chill out!'
    else if @isQuestion()
      'Sure.'
    else if @isSilence()
      'Fine. Be that way!'
    else
      'Whatever.'

module.exports = Bob
