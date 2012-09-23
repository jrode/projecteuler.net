time = Time.now.getutc
require 'prime'
sum = 0
def sum_propdiv(num)
    sm, sq = 1, Math.sqrt(num)
    primes, powers = num.prime_division.transpose
    return 1 if !(powers)
    powers.each_with_index {|val, i|
        (val-1).times do |j|
            sqval = primes[i]**(j+2)
            primes.push(sqval) if sqval < sq
        end
    }
    primes.sort!
    (2..3).each {|p|
        primes.combination(p).each {|val|
            prod = val.inject(:*)
            primes.push(prod) if prod < sq && num % prod == 0
        }
    }
    primes.uniq!
    primes.each {|val| sm += val + num/val if val < sq}
    sm += sq if sq == sq.to_i
    return sm.to_i
end
x = 30000
heavys = Array.new(x+1)
(0..11).each {|i|
    sum += i
    heavys[i] = false
}
(12..x).each {|i|
    heavys[i] = (i < sum_propdiv(i))
    temp = false
    j = 12
    while j < i && !temp
        temp = true if heavys[j] && heavys[i-j]
        j += 1
    end
    if !temp
        sum += i
        #puts i.to_s + ' added, sum = ' + sum.to_s
    end
}
puts sum
puts (Time.now.getutc - time).to_s + " seconds"
