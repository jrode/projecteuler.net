sum = 0
num = (2**1000).to_s
num.length.times {|i| sum += num[i].to_i}
puts sum
