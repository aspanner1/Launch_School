require 'pry'

def diamond(line_number)
  diamond_arrays = []
  space_array = []
  halfway = (line_number/2.0).ceil 
  space_array = [(1..(halfway)).to_a.reverse.map do |i|
       Array.new(i, " ")
    end
  ]
  second_space_array = space_array.dup.flatten(1).reverse
  space_array << second_space_array[1..]
  space_array.flatten!(1)
  diamond_array = [(1..halfway).map do |i| 
    Array.new(1, ("*" * (2 * i -1)))
  end 
]
  second_diamond_array = diamond_array.dup.flatten(1).reverse
  diamond_array << second_diamond_array[1..]
  diamond_array.flatten!(1)
  full_array = (1..line_number).to_a.map do |i|
    space_array[i-1] + diamond_array[i-1] + space_array [i-1]
  end 
  binding.pry
  full_array
end
puts diamond(9)