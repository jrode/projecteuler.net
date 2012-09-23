sum = 0
fact = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
(3..999999).each {|n|
    sm = 0
    n.to_s.split(//).each {|m| sm += fact[m.to_i]}
    if n == sm
        sum += n
        puts n
    end    
}
puts sum
