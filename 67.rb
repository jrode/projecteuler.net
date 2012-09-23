tri = IO.read('triangle.txt')
tri2 = tri.split(/\n/)
tri2.each_with_index {|s,i| tri2[i] = s.split(/\s/)}
tri2.each_with_index {|a,r| a.each_with_index {|s,c| tri2[r][c] = s.to_i}}
tri2 = tri2.reverse
tri2.each_with_index {|a,r|
    a.each_with_index {|s,c|
        if r > 0
            x, y = tri2[r-1][c], tri2[r-1][c+1]
            tri2[r][c] += x > y ? x : y
        end
    }
}
puts tri2[tri2.length-1]
