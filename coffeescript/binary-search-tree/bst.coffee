class Bst
  constructor: (@data)->
  insert: (value)->
    subtree = if value > @data then 'right' else 'left'
    @[subtree]?.insert(value) ? @[subtree] = new Bst value
  each: (fcn)->
    @left?.each fcn
    fcn @data
    @right?.each fcn

module.exports = Bst
