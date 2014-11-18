class Anagram
  constructor: (@word)->
  match: (list)->
    getAlphabetizedString = (str)-> str.split('').sort().join('')
    lowercasedList = list.map (item)-> item.toLowerCase()
    lowercasedWord = @word.toLowerCase()
    alphabetizedWord = getAlphabetizedString lowercasedWord
    lowercasedList.filter (item)->
      lowercasedWord != item && alphabetizedWord == getAlphabetizedString item

module.exports = Anagram
