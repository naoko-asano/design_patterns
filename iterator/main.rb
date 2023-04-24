require_relative "./array_iterator"

array = ["red", "blue", "green"]

i = ArrayIterator.new(array)
while i.has_next?
  puts "item: #{i.next_item}"
end
