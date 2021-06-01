hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

ordered_hash = hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end  
  else  
    value[:size].upcase
  end 
end 

p ordered_hash