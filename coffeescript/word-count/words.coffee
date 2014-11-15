class Words
  constructor: (sentence)->
    words = sentence.toLowerCase().match /\w+/g
    @count = {}
    @count[word] = 0 for word in words
    @count[word] += 1 for word in words

module.exports = Words
