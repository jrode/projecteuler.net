require 'bigdecimal'
(1..100).each {|i|
    puts 1/BigDecimal(i.to_s, 40)
}
