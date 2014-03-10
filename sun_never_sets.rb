require 'time'
require 'sun_times'
require 'geokit'

require_relative 'date_line'

def stuff filename
  date = DateTime.now
  IO.readlines(filename).map { |city|

    sleep 0.5 # prevent TooManyQueriesError
    res = Geokit::Geocoders::GoogleGeocoder.geocode(city)
    lat = res.lat
    long = res.lng

    sunrise = SunTimes.new.rise(date, lat, long)
    sunset = SunTimes.new.set(date, lat, long)

    DateLine.new(sunrise, sunset, city)
  }.sort { |date_line|
    date_line.sunrise.hour * 24 + date_line.sunrise.min 
  }
end



puts stuff(ARGV[0] || 'input/small_cities.txt').join("\n")

