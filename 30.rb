sum = 0
(2..999999).each {|n| puts sum += n if n == n.to_s.split(//).reduce(0) {|sm, i| sm + i.to_i**5}}
puts sum
