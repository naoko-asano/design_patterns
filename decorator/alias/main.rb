class SimpleWriter
  def initialize(file)
    @file = file
  end

  def write_line(content)
    puts <<~"TEXT"
      #{@file}に以下を出力します
      #{content}
    TEXT
  end
end

writer = SimpleWriter.new("foo.txt")

class << writer
  alias old_write_line write_line

  def write_line(content)
    old_write_line("#{Time.new}: #{content}")
  end
end

writer.write_line("時間が出力されます")
