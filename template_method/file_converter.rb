class Converter
  def initialize
    @data = { name: "Alice", age: 18 }
  end

  # テンプレートメソッド
  def convert_with_message
    start
    convert
    finish
  end

  # フックメソッド(具象クラスによってオーバーライドできる非抽象メソッド)
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
