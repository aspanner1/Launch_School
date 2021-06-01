flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
short_flints = flintstones.map do |name|
  name[0..2]
end 
puts short_flints