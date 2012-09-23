sum = 0
tops = 1000000
primes = Array.new(tops+1, true)
primes[0] = false
primes[1] = false
(2..(Math.sqrt(tops)).to_i).each {|i|
    (2..(tops/i).to_i).each {|j|
        primes[i*j] = false
    }
}    
primes.each_with_index {|val,i|
    if val
        if i > 9
            j = i.to_s.split(//)
            test = Array.new(j.length-2)
            (0..(j.length-2)).each {|k| 
                test[k] = j.rotate(k+1)
            }
            test.uniq!
            test.each {|p| val = false if !primes[p.join.to_i]}
            
        end
        if val
            sum += 1
            print i.to_s + ": "
            test.each {|t| print t.join + ' '} if test != nil
            print "\n"
        end            
    end
}
puts sum
