class Anagram
  constructor: (@word)->
  match: (list)->
    sortedWord = @word.toLowerCase().split('').sort().join('')
    list.map((item)->item.toLowerCase()).filter (item)=>
      sortedWord == item.split('').sort().join('') && @word != item

module.exports = Anagram
