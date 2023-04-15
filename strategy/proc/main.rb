require 'date'
require 'json'
require 'yaml'

require_relative 'weather_reporter'

weather_data = {date: Date.today, place: "Tokyo", weather: "sunny"}

# ストラテジをProcオブジェクトにすることによって、わざわざクラスを作らずに済むようになった
# 以下の場合は、Procを使うべき
# インターフェイスが単純で、1つのメソッドでこと足りる場合
# HINT: Procオブジェクトに対して呼べるのはcallメソッドのみ
JSON_CONVERTER =  lambda do |data|
  data.to_json
end
weather_reporter = WeatherRepoter.new(weather_data, &JSON_CONVERTER)
weather_reporter.output_weather_data
# -> {"date":"2023-04-16","place":"Tokyo","weather":"sunny"}

# ストラテジの交換が楽
YAML_CONVERTER = lambda do |data|
  data.to_yaml
end
weather_reporter.converter = YAML_CONVERTER
weather_reporter.output_weather_data
# ->
# ---
# :date: 2023-04-16
# :place: Tokyo
# :weather: sunny
