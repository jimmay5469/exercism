class LinkedList
  constructor: ->
    @count = 0
  linkItems: (first, second)->
    first?.next = second
    second?.prev = first
  pushNode: (value)->
    @count++
    oldEnd = @end
    @end = new Node value
    @start = @end unless @start
    @linkItems oldEnd, @end
  unshiftNode: (value)->
    @count++
    oldStart = @start
    @start = new Node value
    @end = @start unless @end
    @linkItems @start, oldStart
  popNode: ->
    return unless @end
    @count--
    oldEnd = @end
    @end = @end.prev
    oldEnd.value
  shiftNode: ->
    return unless @start
    @count--
    oldStart = @start
    @start = @start.next
    oldStart.value
  deleteNode: (value)->
    @count--
    cursor = @start
    cursor = cursor.next while cursor.value != value
    @start = @start.next if cursor == @start
    @end = @end.prev if cursor == @end
    @linkItems cursor.prev, cursor.next
  countNodes: ->
    @count

class Node
  constructor: (value)->
    Object.defineProperty @, 'value', get: -> value

module.exports = LinkedList
