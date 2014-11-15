class Words
  constructor: (sentence)->
    words = sentence.toLowerCase().match /\w+/g
    @count = words.reduce (count, word)->
      count[word] = count[word] + 1 || 1
      count
    , {}

module.exports = Words
