class DateLine
  attr_reader :sunrise, :sunset, :city
  def initialize(sunrise, sunset, city)
    @sunrise = sunrise
    @sunset = sunset
    @city = city.strip
  end
end