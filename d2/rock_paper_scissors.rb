def scoring(opp, me)
  case opp
  when 'A'
    case me
    when 'X'
      3
    when 'Y'
      6
    when 'Z'
      0
    end
  when 'B'
    case me
    when 'X'
      0
    when 'Y'
      3
    when 'Z'
      6
    end
  when 'C'
    case me
    when 'X'
      6
    when 'Y'
      0
    when 'Z'
      3
    end
  end
end

hand_score = {
  'X' => 1,
  'Y' => 2,
  'Z' => 3
}

filename = 'input.txt'
score = 0
File.foreach(filename) do |line|
  opp, me = line.chomp.split(' ')
  score = score + scoring(opp, me) + hand_score[me]
end

puts score
