array = [1, 2, 3]
mapped_array = array.map { |num| num + 1 }
mapped_and_tapped = mapped_array.tap { |value| p 'hello' } 
p mapped_and_tapped 