arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
sorted_arr = arr.sort_by do |sub_array|
  sub_array.select do |i|
    i % 2 == 1
  end
end 

p sorted_arr