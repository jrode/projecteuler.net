def how_many(n,s=0)
    ways = 0
    quid = [200, 100, 50, 20, 10, 5, 2, 1]
    (s..7).each {|i|
        if n == quid[i]
            ways += 1
        elsif n > quid[i]
            ways += how_many(n-quid[i], i)
        end
    }
    return ways
end
puts how_many(200)
