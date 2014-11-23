class Bst
  constructor: (@data)->
  insert: (value)->
    if value > @data
      if @right
        @right.insert(value)
      else
        @right = new Bst(value)
    else
      if @left
        @left.insert(value)
      else
        @left = new Bst(value)
  each: (fcn)->
    @left.each(fcn) if @left
    fcn(@data)
    @right.each(fcn) if @right

module.exports = Bst
