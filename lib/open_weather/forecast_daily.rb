# https://github.com/coderhs/ruby_open_weather_map/pull/16

module OpenWeather
  class ForecastDaily < Base
    def initialize options = {}
      super('http://api.openweathermap.org/data/2.5/forecast/daily', options)
    end
  end
end
