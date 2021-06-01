puts "Please enter an integer greater than 0"
integer = gets.to_i
puts "Would you like the sum or product?"
sum_or_product = gets.chomp 

array = (1..integer)
case sum_or_product 
when "sum" 
  puts array.sum
when "product"
  puts array.inject(:*)
end 