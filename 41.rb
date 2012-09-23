time = Time.now.getutc
tops = 10000000
dig = ['1','2','3','4','5','6','7','8','9']
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

(10..tops).each {|i|
    if $primes[i]
        puts i if i.to_s.split(//).sort == dig.take(i.to_s.length)
    end
}
puts (Time.now.getutc - time).to_s + " seconds"
