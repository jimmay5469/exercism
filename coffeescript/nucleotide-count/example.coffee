class DNA
  constructor: (input)->
    @nucleotideCounts = {A:0, T:0, C:0, G:0}
    @nucleotideCounts[nucleotide]++ for nucleotide in input.split ''
  count: (input)->
    @nucleotideCounts[input] ? throw new Error 'Invalid Nucleotide'

module.exports = DNA
