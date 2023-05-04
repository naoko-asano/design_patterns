require 'json'
require 'yaml'

CONTENTS = { name: "Alice", age: 18 }.freeze

class Outputter
  attr_writer :converter

  def initialize(&converter)
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
    puts @converter.call(CONTENTS)
  end

  def output_completion_message
    puts "出力を終了します"
  end
end

outputter = Outputter.new { |contents| contents.to_json }
outputter.output_contents_with_message

outputter.converter = lambda { |contents| contents.to_yaml }
outputter.output_contents_with_message
