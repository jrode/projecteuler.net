sum = 0
IO.read('words.txt').split(/\",\"/).each {|w|
    score = 0
    w.each_char {|c| score += c.ord - 64}
    score *= 2
    sum += 1 if score == Math.sqrt(score).floor * (Math.sqrt(score).floor + 1) 
}
puts sum
