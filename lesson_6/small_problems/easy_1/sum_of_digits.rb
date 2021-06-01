def sum(integer)
  integer.to_s.split('').inject{|int_string, sum| sum = sum.to_i + int_string.to_i}
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45