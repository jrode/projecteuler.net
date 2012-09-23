require 'prime'
max = [0, 0, 0]
(-1000..1000).each {|a|
    (-1000..1000).each {|b|
        n = 0
        while (n*n + a*n + b).prime?
            n += 1
        end
        max = [n+1, a, b] if n+1 > max[0]
     }
}
puts max.inspect
puts (max[1] * max[2]).to_s
