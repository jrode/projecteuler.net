x = Array.new(0)
(2..100).each {|a| (2..100).each {|b| x.push(a**b)}}
puts (x.uniq.length).to_s
