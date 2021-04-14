# ask for number 1 and 2
# ask for operation to be performed
# perform operation
# output
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
def prompt(message = "That's not a valid number!")
  Kernel.puts(message)
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end



number_one = nil
number_two = nil 
operation = nil
answer = nil

prompt(MESSAGES['welcome'])
prompt(MESSAGES['intro'])
loop do
  loop do
    prompt(MESSAGES[:message_no_1])
    number_one = Kernel.gets().chomp()
    if valid_number?(number_one)
      break
    else
      prompt()
    end
  end 
  loop do 
    prompt("What's the second number?")
    number_two = Kernel.gets().chomp() 
    if valid_number?(number_two)
      break
    else
      prompt()
    end 
  end 
  prompt("What operation would you like me to perform?")
  operation = Kernel.gets().chomp().downcase()  
  answer = case operation
  when "add"
    number_one.to_f() + number_two.to_f()
  when "subtract"
    number_one.to_f() - number_two.to_f()
  when "multiply"
    number_one.to_f() * number_two.to_f() 
  when "divide"
    number_one.to_f() / number_two.to_f() 
  end 
  prompt("Your answer is #{answer}")
  prompt("Do you want to perform another calculation?")
  result = Kernel.gets().chomp() 
  break unless result.downcase().start_with?('y')
end 
prompt ("Thank you for using Mr.Calculator! Goodbye!")