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

module NumberingWriter
  attr_reader :line_number

  def write_line(content)
    @line_number = 1 unless @line_number
    super("#{@line_number}: #{content}")
    @line_number += 1
  end
end

module TimeStampingWriter
  def write_line(content)
    super("#{Time.new}: #{content}")
  end
end

writer = SimpleWriter.new("foo.txt")
writer.extend(NumberingWriter)
writer.extend(TimeStampingWriter)

writer.write_line("行と時間が出力されます")
