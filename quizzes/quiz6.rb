
#take the numbers between 250 and 750
numbers = (250..750).to_a

#show only the odd numbers
numbers.select{|n| n.odd?}

#then sum the odd numbers
numbers.select{|n| n.odd?}.inject(&:+)