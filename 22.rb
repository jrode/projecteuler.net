sum = 0
IO.read('names.txt').split(/\",\"/).sort.each_with_index {|name,i|
    score = 0
    name.each_char {|c| score += c.ord - 64}
    sum += score * (i + 1) 
}
puts sum
