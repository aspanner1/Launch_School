def rotate_rightmost_digits(num, spaces)
  array_num = num.to_s.split('')
  split_index = array_num.size - spaces
  rotated_section = rotate_array(array_num[split_index..-1]) 
  (array_num[0...-spaces] + rotated_section).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917