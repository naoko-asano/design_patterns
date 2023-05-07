# 外部イテレータ
class ArrayIterator
  def initialize(array)
    @array = Array.new(array)
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = item
    @index += 1
    value
  end
end


array = ["red", "blue", "green"]

i = ArrayIterator.new(array)
while i.has_next?
  puts "item: #{i.next_item}"
end
