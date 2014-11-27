class Clock
  @at: (hour, minute)->
    new @(hour, minute)
  constructor: (hour=0, minute=0)->
    @totalMinutes = hour * 60 + minute
    @normalize()
  normalize: ->
    @totalMinutes -= 24 * 60 while @totalMinutes > 24 * 60
    @totalMinutes += 24 * 60 while @totalMinutes < 0
  toString: ->
    minute = @totalMinutes % 60
    hour = (@totalMinutes - minute) / 60
    hourString = if hour > 9 then hour.toString() else "0#{hour}"
    minuteString = if minute > 9 then minute.toString() else "0#{minute}"
    "#{hourString}:#{minuteString}"
  plus: (minutes)->
    @totalMinutes += minutes
    @normalize()
    @
  minus: (minutes)->
    @totalMinutes -= minutes
    @normalize()
    @
  equals: (clock)->
    @totalMinutes == clock.totalMinutes

module.exports = Clock
