puts (1..1000).to_a.map{|x|x**x}.inject(:+)
