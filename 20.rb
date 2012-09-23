sum = 0
num = (2..100).inject(:*).to_s
num.length.times {|i| sum += num[i].to_i}
puts sum
