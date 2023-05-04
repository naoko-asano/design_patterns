require 'json'
require 'yaml'

CONTENTS = { name: "Alice", age: 18 }.freeze

# Context
class Outputter
  attr_writer :converter

  def initialize(converter)
    @converter = converter
  end

  def output_contents_with_message
    output_start_message
    output_contents
    output_completion_message
  end

  def output_start_message
    puts "出力を開始します"
  end

  def output_contents
    puts @converter.convert(CONTENTS)
  end

  def output_completion_message
    puts "出力を終了します"
  end
end

# Strategy
class JsonConverter
  def convert(contents)
    contents.to_json
  end
end

# Strategy
class YamlConverter
  def convert(contents)
    contents.to_yaml
  end
end

outputter = Outputter.new(JsonConverter.new)
outputter.output_contents_with_message

outputter.converter = YamlConverter.new
outputter.output_contents_with_message
