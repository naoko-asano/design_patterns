require 'json'

# ストラテジ
class JsonConverter
  def convert(content)
    content.to_json
  end
end
