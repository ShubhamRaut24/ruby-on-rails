require_relative 'Crud'
class Student
    include Crud

    attr_accessor :first_name, :last_name, :email , :username, :password

    @first_name
    @last_name 
    @email
    @username
    @password

    def initialize(firstname,lastname,email,username,password)
       
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
    end

    def to_s
          "First Name :#{@first_name} \n Last Name:#{@last_name} \n Email:#{@email}\n Username:#{@username}  \n Password:#{@password}"
    end 

     
end

 
mark = Student.new("Mark","Smith","mark@gamil.com","mark123","pass123")
john = Student.new("John","Doe","john@gamil.com","john123","pass123")
 
puts mark

new_hashed_password = mark.bcrypt_password(mark.password)
puts new_hashed_password



