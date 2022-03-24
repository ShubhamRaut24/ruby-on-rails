puts "simple calculator"
30.times{print "-"}
puts
puts "enter 1st number"
num1 = gets.chomp
puts "enter 2nd number"
num2 = gets.chomp
puts "addition is #{num1.to_i + num2.to_i}"
puts "subtration is #{num1.to_i - num2.to_i}"
puts "multiplication is #{num1.to_i * num2.to_i}"
puts "division is #{num1.to_f / num2.to_i}"
puts "moduls is #{num1.to_i % num2.to_i}"