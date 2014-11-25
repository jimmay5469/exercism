class Palindromes
  constructor: (@range)->
    @range.minFactor ?= 0
    @palindromeProducts = []
  generate: ->
    for right in [@range.minFactor..@range.maxFactor]
      for left in [@range.minFactor..right]
        product=left*right
        if product.toString() == product.toString().split('').reverse().join('')
          @palindromeProducts.push
            product: product
            left: left
            right: right
  largest: ->
    largestProduct = @palindromeProducts.sort((a,b)->b.product-a.product)[0].product
    factors = @palindromeProducts.filter((item)->largestProduct==item.product).map((item)->[item.left,item.right])
    value: largestProduct
    factors: factors
  smallest: ->
    smallestProduct = @palindromeProducts.sort((a,b)->a.product-b.product)[0].product
    factors = @palindromeProducts.filter((item)->smallestProduct==item.product).map((item)->[item.left,item.right])
    value: smallestProduct
    factors: factors

module.exports = Palindromes
