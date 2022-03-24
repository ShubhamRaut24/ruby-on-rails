# users array where username and password are stored
users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

def auth_user(username,password,list_of_users)
   
    list_of_users.each do |user|
      
        if user[:username] == username && user[:password] == password
            return user   
        end
    end
    "Wrong Credentials"

end

attemtps = 1

while attemtps<4
    puts "Username : "
    userName = gets.chomp
    puts "Password : "
    password = gets.chomp
    
    authenticator = auth_user(userName,password,users)
    puts authenticator
    puts "press q to quit and any key to contineu:"
    input = gets.chomp.downcase
    break if input == "q"
    
    attemtps += 1

end
puts "You have exceeded the number of attempts" if attemtps == 4