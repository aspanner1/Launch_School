require "pry-byebug"
a = 'hi there'
english_greetings = ['hello', a, 'good morning']

english_greetings[1][0]= 'b'

p a
p english_greetings 
p english_greetings[1]