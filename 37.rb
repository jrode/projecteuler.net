time = Time.now.getutc
sum = 0
tops = 1000000
$primes = Array.new(tops+1, true)
$primes[0] = false
$primes[1] = false
(2..(Math.sqrt(tops)).to_i).each {|i|
    if $primes[i]
        (2..(tops/i).to_i).each {|j|
            $primes[i*j] = false
        }
    end
}
def truncatable?(p, d=0)
    return false if !$primes[p.to_i]
    return true if p.to_i < 10
    if d < 0
        return truncatable?(p[1, p.length-1], -1)
    elsif d > 0
        return truncatable?(p[0, p.length-1], 1)
    else
        return truncatable?(p[1, p.length-1], -1) && truncatable?(p[0, p.length-1], 1)
    end
end
(23..tops).each {|i|
    if $primes[i]
        if truncatable?(i.to_s)
            puts i
            sum += i
        end
    end
}
puts sum
puts (Time.now.getutc - time).to_s + " seconds"
