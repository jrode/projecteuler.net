letters = 0
digits = ['','one','two','three','four','five','six','seven','eight','nine',
          'ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
tens = ['','','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
hundred, aand = 'hundred', 'and'
(1..1000).each {|i|
    current = ''
    current = digits[i/100] + hundred if i > 99
    current += aand if i%100 > 0 && i > 99
    current += tens[(i%100)/10] + digits[i%10] if i%100 > 19
    current += digits[i%100] if i%100 < 20
    current = 'onethousand' if i == 1000
    letters += current.length
}
puts letters
