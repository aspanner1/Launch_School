def real_palindrome?(string)
  palindrome = string.downcase.gsub(/[^0-9, a-z, \s+ ]/, '').reverse
  p palindrome
  string.downcase.gsub(/[^0-9a-z]/, '') == palindrome
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false