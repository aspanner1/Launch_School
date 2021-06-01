munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |key, value|
  value["age-group"] = case value["age"]
  when 65..150
    "Senior"
  when 0..17
    "Kid"
  when 
    18..64
    "adult"
  end
end 
puts munsters