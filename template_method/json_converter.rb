require 'json'
require_relative 'file_converter'

class JsonConverter < Converter
  def convert
    puts @data.to_json
  end
end
