def factors(number)
  divisor = number
  factors = []
  loop do 
    if divisor == 0
      puts "The divisor is 0!" 
    else 
      factors << number / divisor if number % divisor == 0
      divisor -= 1
      break if divisor == 0
    end 
  end 
  factors
end

puts factors(30)