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
puts "What do you want to do? 1) addition 2) subtraction 3) multiplication 4) division 5)find remainder"
choice = gets.chomp
puts "enter 1st number"
num1 = gets.chomp
puts "enter 2nd number"
num2 = gets.chomp


if choice == "1"
    puts "addition is #{addition(num1,num2)}"
elsif choice == "2"
    puts "subtration is #{subtration(num1,num2)}"
elsif choice == "3"
    puts "multiplication is #{multiply(num1,num2)}"
elsif choice == "4"
    puts "division is #{division(num1,num2)}"
elsif choice == "5"
    puts "moduls is #{moduls(num1,num2)}"
else 
    puts "Invalid choice"
end    