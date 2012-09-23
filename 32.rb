sum = 0
def pandigital(n)
    (2..n).each {|m|
            if n % m == 0
                if (n.to_s + m.to_s + (n/m).to_s).split(//).sort == ['1','2','3','4','5','6','7','8','9']
                    return n
                end
            end
    }
    return 0
end
(1234..98765).each {|n|
    if n.to_s.split(//).uniq.join.to_i == n
        sum += pandigital(n)
    end
}
puts sum
