require 'date'
require_relative 'weather_reporter'
require_relative 'json_converter'
require_relative 'yaml_converter'

weather_data = {date: Date.today, place: "Tokyo", weather: "sunny"}
weather_reporter = WeatherRepoter.new(weather_data, JsonConverter.new)
weather_reporter.output_weather_data

# ストラテジの交換が楽
weather_reporter.converter = YamlFomatter.new
weather_reporter.output_weather_data
