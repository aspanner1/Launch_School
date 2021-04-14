# frozen_string_literal: true

puts 'What is the loan amount?'
principal = Kernel.gets.chomp.to_f
puts 'What is the Annual Percentage Rate (APR)?'
apr = Kernel.gets.chomp.to_f
puts 'What is the loan duration in years?'
year_duration = Kernel.gets.chomp.to_f

mpr = apr / 12
month_duration = year_duration * 12

monthly_payment = principal * (mpr / (1 - (1 + mpr)**-month_duration))
puts monthly_payment
