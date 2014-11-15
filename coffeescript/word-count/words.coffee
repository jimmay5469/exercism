class Words
  constructor: (sentence)->
    words = sentence.toLowerCase().match /\w+/g
    @count = words.reduce (count, word)->
      count[word] ?= 0
      count[word]++
      count
    , {}

module.exports = Words
