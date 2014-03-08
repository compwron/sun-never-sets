require 'time'
require 'sun_times'
require 'geokit'

def stuff
  date = DateTime.now
  IO.readlines('input/cities.txt').map { |city|

    sleep 0.5 # prevent TooManyQueriesError
    res = Geokit::Geocoders::GoogleGeocoder.geocode(city)
    lat = res.lat
    long = res.lng

    sunrise = SunTimes.new.rise(date, lat, long)
    sunset = SunTimes.new.set(date, lat, long)

    puts "#{compose_line(sunrise, sunset)} #{city.strip} sunrise: #{sunrise} sunset: #{sunset}"

  }
end

def compose_line(sunrise, sunset)
  city_line = ''

  (1..24).each { |hour|
    rise_hour = sunrise.hour
    set_hour = sunset.hour

    if (rise_hour < set_hour) then
      symbol = hour >= rise_hour && hour <= set_hour ? '|' : '-'
    else
      symbol = hour >= rise_hour || hour <= set_hour ? '|' : '-'
    end

    city_line += symbol
  }
  city_line
end

stuff()

