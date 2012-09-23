sum = 0
(1..999999).each {|i|
    bin = i.to_s(2)
    dec = i.to_s
    if bin == bin.reverse && dec == dec.reverse
        sum += i
    end
}
puts sum
