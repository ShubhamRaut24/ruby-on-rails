puts "whats is your first name ?"
firstName = gets.chomp
puts "whats is your last name ?"
lastName = gets.chomp
fullName = firstName+" "+lastName
puts  "Your full name is  #{fullName}"
puts "Your full name in reverse  is #{fullName.reverse}"
puts "Your name length is #{fullName.length-1}"