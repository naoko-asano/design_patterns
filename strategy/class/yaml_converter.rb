require 'yaml'

# ストラテジ
class YamlFomatter
  def convert(content)
    content.to_yaml
  end
end
