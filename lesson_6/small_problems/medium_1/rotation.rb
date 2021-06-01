def rotate_array(array)
  altered_array = array.clone
  altered_array << altered_array[0]
  altered_array[0] = altered_array[1]
  altered_array.delete_at(1)
  altered_array
end 

x = [7, 3, 5, 2, 9, 1]
y = ['a', 'b', 'c']
z = ['a']

p rotate_array(x) == [3, 5, 2, 9, 1, 7]
p rotate_array(y) == ['b', 'c', 'a']
p rotate_array(z) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true