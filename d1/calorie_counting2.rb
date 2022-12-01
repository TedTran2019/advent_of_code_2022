require 'rb_heap'

filename = 'input.txt'
curr_sum = 0
heap = Heap.new(:>)
File.foreach(filename) do |line|
  if line == "\n"
    heap << curr_sum
    curr_sum = 0
    next
  end

  curr_sum += line.chomp.to_i
end

puts heap.pop + heap.pop + heap.pop
