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
    primes.combination(2).each {|val|
        prod = val[0]*val[1]
        primes.push(prod) if prod < sq && num % prod == 0
    }
    primes.uniq!
    primes.each {|val| sm += val + num/val if val < sq}
    sm += sq if sq == sq.to_i
    return sm.to_i
end
x = 10000
props = Array.new(x)
(2..x).each {|i|
    props[i] = sum_propdiv(i) if props[i] == nil
    y = props[i]
    props[y] = sum_propdiv(y) if props[y] == nil
    sum += i if y > 1 && y < x && y != i && i == props[y]
}
puts sum
puts (Time.now.getutc - time).to_s + " seconds"
