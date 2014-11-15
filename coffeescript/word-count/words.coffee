class Words
  constructor: (sentence)->
    # private functions
    getWordCountDictionary = ->
      convertWordArrayToDictionary getWordArray()
    getWordArray = ->
      sentence.toLowerCase().match /\w+/g
    convertWordArrayToDictionary = (wordArray)->
      wordArray.reduce addWordInstanceToDictionary, {}
    addWordInstanceToDictionary = (dict, word)->
      dict[word] ?= 0
      dict[word]++
      dict

    # define count property
    Object.defineProperty @, 'count', get: getWordCountDictionary

module.exports = Words
