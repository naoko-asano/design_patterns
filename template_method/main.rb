require 'json'
require 'yaml'

CONTENTS = { name: "Alice", age: 18 }.freeze

# AbstractClass
class Converter
  # template method
  def convert_with_message
    start
    convert
    finish
  end

  def start
    puts "開始します"
  end

  def convert
    raise StandardError.new("サブクラスで定義して！")
  end

  def finish
    puts "終了します"
  end
end

# ConcreateClass
class JsonConverter < Converter
  def convert
    puts CONTENTS.to_json
  end
end

# ConcreateClass
class YamlConverter < Converter
  def convert
    puts CONTENTS.to_yaml
  end
end

JsonConverter.new.convert_with_message
YamlConverter.new.convert_with_message
