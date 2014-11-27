class WordProblem
  constructor: (@problemString)->
  ERROR: tooComplicated: 'tooComplicated'
  answer: ->
    operators = @problemString.match /plus|minus|multiplied|divided/g
    throw @ERROR.tooComplicated unless operators
    numbers = @problemString.match(/-?\d+/g).map (num)-> 1*num
    operators.reduce (ans, operator, index)->
      switch operator
        when 'plus' then ans + numbers[index+1]
        when 'minus' then ans - numbers[index+1]
        when 'multiplied' then ans * numbers[index+1]
        when 'divided' then ans / numbers[index+1]
    , numbers[0]

module.exports = WordProblem
