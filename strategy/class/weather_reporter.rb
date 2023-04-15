# コンテキスト(ストラテジの利用者)
class WeatherRepoter
  attr_accessor :converter

  def initialize(weather_data, converter)
    @weather_data = weather_data
    @converter = converter
  end

  def output_weather_data
    puts @converter.convert(@weather_data)
  end
end
