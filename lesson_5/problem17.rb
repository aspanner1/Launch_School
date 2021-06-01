hexadecimals = %w(a b c d e f 1 2 3 4 5 6 7 8 9)
p hexadecimals
uuid = ""
for i in (1..32) do 
  uuid << hexadecimals.sample
end 

p uuid