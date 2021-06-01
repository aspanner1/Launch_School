require 'pry'
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
youngest = ages.inject do |memo, key| 
  memo[1] < key[1] ? memo : key
end 
puts ages
puts youngest