class Pascal
  constructor: (depth)->
    @array = [[1]]
    for row in [1...depth]
      newRow = for column in [0..row]
        left = @array[row-1][column-1] ? 0
        right = @array[row-1][column] ? 0
        left + right
      @array.push newRow

module.exports = Pascal
