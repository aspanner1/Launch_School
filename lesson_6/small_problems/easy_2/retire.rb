puts "What is your age?"
age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

puts "It's currently #{Time.now.year}. You will retire in #{Time.now.year + (retirement_age - age)}"