def count_occurences(vehicles)
  vehicle_sum = vehicles.each_with_object([]) do |i, hash| 
    hash << {i.to_sym => vehicles.count(i)}
  end
  vehicle_sum
end
    
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurences(vehicles)