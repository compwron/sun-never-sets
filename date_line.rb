require 'time'
class DateLine
  attr_reader :sunrise, :sunset, :city

  def initialize(sunrise, sunset, city)
    @sunrise = sunrise
    @sunset = sunset
    @city = city.strip
  end

  @@fifteen_minute_increments_in_day = 24 * 4

  def minute_of_rise date_time
    date_time.hour * 60 + date_time.min
  end

  def choose_symbol quarter_hour

    rise_minute = minute_of_rise(sunrise)
    set_minute = minute_of_rise(sunset)

    current_rounded_minute = quarter_hour * 15

    after_sunrise = current_rounded_minute >= rise_minute
    before_sunset = current_rounded_minute <= set_minute

    if (rise_minute < set_minute) then
      return after_sunrise && before_sunset ? '|' : '-'
    else
      return after_sunrise || before_sunset ? '|' : '-'
    end
  end

  def to_s
    city_line = ''

    (1..@@fifteen_minute_increments_in_day).each { |quarter_hour|
      city_line += choose_symbol(quarter_hour)
    }
    city_line + " #{@city}"
  end
end