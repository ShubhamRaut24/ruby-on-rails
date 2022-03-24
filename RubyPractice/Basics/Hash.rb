sample_hash = {"a" => 1, "b" => 2, "c" => 3}
myDetails_hash = {"name" => "shubham", "fevColor" => "blue"}
puts sample_hash["a"]
puts myDetails_hash["fevColor"]
puts sample_hash.values
puts sample_hash.keys

sample_hash.each do |key,value|
    puts "key is #{key} and value for key is #{value}"
end
40.times{print "-"}
puts
myDetails_hash = {:name => "shubham", :fevColor => "blue"}
myDetails_hash.each do |key,value|
    puts "The class for key is #{key.class} and for for is #{value.class}"
end

a = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>"Shubham"}
puts a
a[:c] = "Ruby"
puts a
40.times{print "-"}
puts
a.each { |key,value| puts "Here key is #{key} and value is #{value}"  }
a.select {|k , v| puts v.is_a?(String)}

a.each { |key,value| a.delete(key) if value.is_a?(String)  }