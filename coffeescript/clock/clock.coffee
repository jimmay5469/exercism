class Clock
  @at: (hour, minute)->
    new @(hour, minute)
  constructor: (@hour=0, @minute=0)->
  toString: ->
    hourString = if @hour > 9 then @hour.toString() else "0#{@hour}"
    minuteString = if @minute > 9 then @minute.toString() else "0#{@minute}"
    "#{hourString}:#{minuteString}"
  plus: (minutes)->
    totalMinutes = @minute + minutes
    @minute = totalMinutes % 60
    @hour += (totalMinutes - @minute) / 60
    @hour = @hour % 24
    @
  minus: (minutes)->
    @plus -1 * minutes

module.exports = Clock
