def scoring(opp, intention)
  case opp
  when 'A'
    case intention
    when 'X'
      HAND_SCORE['C']
    when 'Y'
      HAND_SCORE[opp] + 3
    when 'Z'
      HAND_SCORE['B'] + 6
    end
  when 'B'
    case intention
    when 'X'
      HAND_SCORE['A']
    when 'Y'
      HAND_SCORE[opp] + 3
    when 'Z'
      HAND_SCORE['C'] + 6
    end
  when 'C'
    case intention
    when 'X'
      HAND_SCORE['B']
    when 'Y'
      HAND_SCORE[opp] + 3
    when 'Z'
      HAND_SCORE['A'] + 6
    end
  end
end

HAND_SCORE = {
  'A' => 1,
  'B' => 2,
  'C' => 3
}.freeze

filename = 'input.txt'
score = 0
File.foreach(filename) do |line|
  opp, intention = line.chomp.split(' ')
  score += scoring(opp, intention)
end

puts score
