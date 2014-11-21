class Triangle
  constructor: (@sides...)->
    throw 'negative sides are illegal' if @sides.filter((item)->item > 0).length != 3
    throw 'violation of triangle inequality' unless @sides.sort()[2] < @sides.sort()[0] + @sides.sort()[1]
  kind: ->
    mapping = ['equilateral', 'isosceles', 'scalene']
    uniqueSideLengths = @sides.filter (item, index)=>
      index == @sides.indexOf item
    mapping[uniqueSideLengths.length-1]

module.exports = Triangle
