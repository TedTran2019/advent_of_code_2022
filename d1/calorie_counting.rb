filename = 'input.txt'
max = nil
curr_sum = 0
File.foreach(filename) do |line|
  if line == "\n"
    max = curr_sum if max.nil? || curr_sum > max
    curr_sum = 0
    next
  end

  curr_sum += line.chomp.to_i
end

puts max
