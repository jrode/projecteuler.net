require 'mathn'
(3..9).each {|n| ("1".."#{n}").to_a.permutation(n).sort.each {|x| puts x.join if x.join.to_i.prime?}}
