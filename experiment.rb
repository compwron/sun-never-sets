require 'time'
require 'sun_times'
require 'geokit'
require_relative 'date_line'

res = Geokit::Geocoders::GoogleGeocoder.geocode("Chicago")
sunrise = SunTimes.new.rise(DateTime.now, res.lat, res.lng)
sunset = SunTimes.new.set(DateTime.now, res.lat, res.lng)
date_line = DateLine.new(sunrise, sunset)

[date_line, date_line].sort {|b| 	b.sunrise.hour * 24 + b.sunrise.min}