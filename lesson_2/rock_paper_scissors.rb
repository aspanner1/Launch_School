#frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors].freeze 

def win?(choice, computer_choice)
  (choice == 'rock' && computer_choice == 'scissors') ||
    (choice == 'paper' && computer_choice == 'rock') ||
    (choice == 'scissors' && computer_choice == 'paper')
end 

def display_result(choice,computer_choice)
  if win?(choice, computer_choice)
    prompt("You won!")
  elsif win?(computer_choice, choice)
    prompt("Computer won!")
  else
    prompt("It's a tie")
  end
end 

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def win_update(choice, computer_choice, win_count)
  if win?(choice, computer_choice)
    win_count += 1
  end 
end
    
loop do 
  choice = ''
  loop do 
    win_count = 0
    prompt("Choose one: #{VALID_CHOICES.join(',')}")
    choice = Kernel.gets().chomp()
  
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end 
  end 

  computer_choice = VALID_CHOICES.sample()
  prompt("You chose #{choice}, computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  win_update(choice, computer_choice, win_count)
  prompt("You have #{win_count} wins")
  if win_count == 2
    puts "You have beaten the computer!"
    exit
  end 

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing! Goodbye")