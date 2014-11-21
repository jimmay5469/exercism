class Triangle
  constructor: (sides...)->
    @sides = sides.sort()
    throw 'negative sides are illegal' if @hasNegativeSide()
    throw 'violation of triangle inequality' if @isTriangleInequality()
  hasNegativeSide: ->
    @sides[0] < 0
  isTriangleInequality: ->
    @sides[0] + @sides[1] <= @sides[2]
  uniqueSidesCount: ->
    @sides.filter((item, index)=> index == @sides.indexOf item).length
  kind: ->
    mapping = ['equilateral', 'isosceles', 'scalene']
    mapping[@uniqueSidesCount()-1]

module.exports = Triangle
