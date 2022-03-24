def multiply(num1, num2)
    num1.to_f * num2.to_f
end
def addition(num1, num2)
    num1.to_f + num2.to_f
end
def subtration(num1, num2)
    num1.to_f - num2.to_f
end
def division(num1, num2)
    num1.to_f / num2.to_f
end
def moduls(num1, num2)
    num1.to_f % num2.to_f
end

puts "simple calculator"
30.times{print "-"}
puts
puts "enter 1st number"
num1 = gets.chomp
puts "enter 2nd number"
num2 = gets.chomp
puts "addition is #{addition(num1,num2)}"
puts "subtration is #{subtration(num1,num2)}"
puts "multiplication is #{multiply(num1,num2)}"
puts "division is #{division(num1,num2)}"
puts "moduls is #{moduls(num1,num2)}"