require_relative './json_converter'
require_relative './yaml_converter'

JsonConverter.new.convert_with_message
YamlConverter.new.convert_with_message
