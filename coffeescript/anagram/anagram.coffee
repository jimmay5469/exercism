class Anagram
  constructor: (@word)->
  match: (list)->
    getAlphabetizedString = (str)-> str.split('').sort().join('')
    getLowercasedList = (lst)-> lst.map((item)->item.toLowerCase())
    lowercasedWord = @word.toLowerCase()
    alphabetizedWord = getAlphabetizedString lowercasedWord
    getLowercasedList(list).filter (item)=>
      alphabetizedWord == getAlphabetizedString(item) && lowercasedWord != item

module.exports = Anagram
