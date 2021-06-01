def instantiate_lights(number)
  Array.new(number, false)
end 

def iterate(light_array, iteration_number)
  (1..iteration_number).each do |i|
    turn_switch?(light_array, i)
  end 
  light_array
end 

def turn_switch?(light_array, multiple)
  light_array.each_with_index do |light, index|
    light_array[index] = !light if (index + 1) % multiple == 0
  end
  light_array 
end 

def select_on(light_array)
  on_lights_array = []
  light_array.each_with_index do |light, index|
    on_lights_array << (index + 1) if light == true 
  end 
  on_lights_array
end 

def lights_on(light_number)
  light_array = instantiate_lights(light_number)
  iterate(light_array, light_number)
  p select_on(light_array)
end

puts "Please enter a number of lights and iterations"
light_number = gets.to_i 
lights_on(light_number)