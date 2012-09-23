prv, nxt, cnt = 1, 1, 2
while nxt.to_s.length < 1000 do
    tmp = nxt
    nxt += prv
    prv = tmp
    cnt += 1
end
puts cnt
