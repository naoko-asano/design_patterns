# Concreate Component
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

# Decorator
require 'forwardable'

class WriterDecorator
  extend Forwardable

  # 委譲を簡単にする
  def_delegators :@real_writer, :write_line

  def initialize(real_writer)
    @real_writer = real_writer
  end
end

# Concreate Decorator
class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(content)
    super("#{@line_number}: #{content}")
    @line_number += 1
  end
end

# Concreate Decorator
class TimeStampingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
  end

  def write_line(content)
    super("#{Time.new}: #{content}")
  end
end

numbering_decorator = NumberingWriter.new(SimpleWriter.new("foo.txt"))
numbering_decorator.write_line("行が出力されます")

time_stamping_decorator = TimeStampingWriter.new(SimpleWriter.new("foo.txt"))
time_stamping_decorator.write_line("時間が出力されます")

multi_decorator = TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new("foo.txt")))
multi_decorator.write_line("行と時間が出力されます")
