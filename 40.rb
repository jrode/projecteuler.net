s = (0..200000).to_a.map {|x| x.to_s}.join
puts (0..6).to_a.map {|x| s[10**x].to_i}.inject(:*)
