class DNA
  constructor: (input)->
    @nucleotideCounts = input.split('').reduce (nucleotideCounts, nucleotide)->
      nucleotideCounts[nucleotide]++
      nucleotideCounts
    , {A:0, T:0, C:0, G:0}
  count: (input)->
    throw new Error('Invalid Nucleotide') unless input.match /^[ATCG]*$/
    @nucleotideCounts[input]

module.exports = DNA
