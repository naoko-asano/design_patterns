require 'yaml'
require_relative 'file_converter'

class YamlConverter < Converter
  def start
    puts "ここからはyamlです"
  end

  def convert
    puts @target.to_yaml
  end
end
