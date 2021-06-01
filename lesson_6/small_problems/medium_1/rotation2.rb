require 'pry'

def max_rotation(integer)
  char_length = integer.to_s.length
  (1..char_length).reverse_each do |i|
    binding.pry
    integer =  rotate_right_most_digits(integer, i)
    binding.pry
  end   
  integer
end

def rotate_right_most_digits(num, spaces)
  array_num = num.to_s.split('')
  split_index = array_num.size - spaces
  rotated_section = rotate_array(array_num[split_index..-1]) 
  binding.pry
  (array_num[0...-spaces] + rotated_section).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

#p max_rotation(735291) #== 321579
#p max_rotation(3) #== 3
#p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845