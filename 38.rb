pans = Array.new()
(2..9999).each {|i|
    (2..6).each {|j|
        num = (1..j).to_a.map {|x| x * i}.join
        pans.push(num) if num.split(//).sort == ['1','2','3','4','5','6','7','8','9']
    }
}
puts pans.sort
