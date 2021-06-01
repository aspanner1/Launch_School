puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
percentage = gets.to_f/100

tip = (bill * percentage).round(2)

puts tip
puts bill

puts "The tip is %0.2f" [tip]
puts "The total is #{bill + tip}"