require 'open_weather'
require 'open_weather/forecast_daily'

class PagesController < ApplicationController
  def main
  end
  def weather
    @forecast = OpenWeather::ForecastDaily.city("Berlin, DE")["list"]
  end
end
