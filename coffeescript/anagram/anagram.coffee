class Anagram
  constructor: (@word)->
  match: (list)->
    getAlphabetizedString = (str)-> str.split('').sort().join('')
    alphabetizedWord = getAlphabetizedString @word.toLowerCase()
    list.map((item)->item.toLowerCase()).filter (item)=>
      alphabetizedWord == getAlphabetizedString(item) && @word.toLowerCase() != item

module.exports = Anagram
