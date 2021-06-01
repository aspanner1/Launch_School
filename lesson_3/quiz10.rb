arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]
  if num >= 3
    new_arr << 0
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end
puts new_arr