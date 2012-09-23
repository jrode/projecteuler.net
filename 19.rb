require 'date'
sum = 0
(Date.new(1901,1,1)..Date.new(2000,12,31)).each {|d| sum+=1 if d.mday == 1 && d.wday == 0}
puts sum
