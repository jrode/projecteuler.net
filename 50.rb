tops = 1000000
high = 1
prime = 2
$primes = Array.new(tops+1, true)
$prms = Array.new()
$primes[0] = false
$primes[1] = false
(2..(Math.sqrt(tops)).to_i).each {|i| (2..(tops/i).to_i).each {|j| $primes[i*j] = false} if $primes[i]}
$primes.each_with_index {|val,i| $prms.push(i) if val}
(0..($prms.length/2)).each {|i|
    (i..($prms.length/50)).each {|j|
        sum = $prms[i..j].inject(:+)
        if sum < tops
            if $primes[sum] && j - i + 1 > high
                high = j - i + 1
                prime = sum
                puts "prime: " + prime.to_s + ", run: " + high.to_s
            end
        end
    }
}
puts prime, high   
