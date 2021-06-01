flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_name_age_hash = flintstones.to_h{|name|
[name, flintstones.index(name)]}
puts flintstones_name_age_hash