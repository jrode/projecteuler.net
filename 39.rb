phi = 0
(12..1000).each {|p|
    tri = Array.new()
    (1..p-2).each {|a|
        (a..p-2).each {|b|
            c = p - a - b
            tri.push([a,b,c]) if a**2 + b**2 == c**2
        }
    }
    if tri.length > phi
        phi = tri.length
        puts p.to_s + " has " + phi.to_s + ": " + tri.inspect
    end
}
    
