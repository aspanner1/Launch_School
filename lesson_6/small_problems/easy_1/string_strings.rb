def stringy(integer)
  string = ''
  integer.times do |i|
    if i.odd? 
      string << 0
    else 
      string << 1
    end 
  end 
  string
end 

p stringy(6)
p stringy(9)
puts stringy(4) == '1010'
puts stringy(7) == '1010101'