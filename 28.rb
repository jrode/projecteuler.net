sum, n, x = 1, 1, 2
while n < 1001**2
    4.times do
        n += x
        sum += n
    end
    x += 2
end
puts sum
