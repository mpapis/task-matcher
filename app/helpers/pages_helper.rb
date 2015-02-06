module PagesHelper
  WEATHER_IDS = {
    [800] => "01d",
    [801] => "02d",
    [802] => "03d",
    [803, 804] => "04d",
    [300, 301, 302, 310, 311, 312, 313, 314, 321, 520, 521, 522, 531] => "09d",
    [200, 201, 202, 210, 211, 212, 221, 230, 231, 232] => "11d",
    [500, 501, 502, 503, 504] => "10d",
    [511, 600, 601, 602, 611, 612, 615, 616, 620, 621, 622] => "13d",
    [701, 711, 721, 731, 741, 751, 761, 762, 771, 781] => "50d",
  }

  def KtoC(kelvin)
    (Integer(kelvin) - 273.15).round
  end
  def weather_icon(id)
    "http://openweathermap.org/img/w/#{WEATHER_IDS.find {|k,v| k.include?(id) }.second}.png"
  end
end
