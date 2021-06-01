hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels_in_sentence = []
vowels = ['a', 'e', 'i', 'o', 'u']
hsh.each do |key, array|
  for word in array
    word.each_char {|letter| vowels_in_sentence << letter if vowels.include?(letter)}
  end 
end 

puts vowels_in_sentence