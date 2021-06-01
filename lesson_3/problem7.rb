statement = "The Flintstones Rock"
letter_freq = Hash.new(0)
statement.split('').each_with_object(letter_freq) do |letter, hash|
  hash[letter] += 1
  puts hash[letter]
end 
puts letter_freq