require 'pry'
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
mult_3_arr = arr.map do |sub_arr|
  sub_arr.select do |i| 
    i % 3 == 0
  binding.pry
  end 
end 
p mult_3_arr