require 'time'
require 'sun_times'
require 'geokit'

def stuff filename
  date = DateTime.now
  IO.readlines(filename).map { |city|

    sleep 0.5 # prevent TooManyQueriesError
    res = Geokit::Geocoders::GoogleGeocoder.geocode(city)
    lat = res.lat
    long = res.lng

    sunrise = SunTimes.new.rise(date, lat, long)
    sunset = SunTimes.new.set(date, lat, long)

    puts "#{compose_line(sunrise, sunset)} #{city.strip}"

  }
end

def compose_line(sunrise, sunset)
  city_line = ''

  (1..(24*4)).each { |quarter_hour|
    minute = quarter_hour * 15

    rise_minute = sunrise.hour * 60 + sunrise.min
    set_minute = sunset.hour * 60 + sunrise.min

    if (rise_minute < set_minute) then
      symbol = minute >= rise_minute && minute <= set_minute ? '|' : '-'
    else
      symbol = minute >= rise_minute || minute <= set_minute ? '|' : '-'
    end

    city_line += symbol
  }
  city_line
end

stuff(ARGV[0] || 'input/small_cities.txt')

