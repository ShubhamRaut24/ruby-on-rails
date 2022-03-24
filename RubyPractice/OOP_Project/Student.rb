class Student
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

    # def first_name=(name)   #setter method
    #     @first_name = name
    # end
    # def first_name          #getter method
    #     @first_name
    # end  
end

# student_object = Student.new
# student_object.first_name = "Shubham"
# student_object.last_name = "Raut"
# puts student_object.first_name
# puts student_object.last_name
mark = Student.new("Mark","Smith","mark@gamil.com","mark123","pass123")
john = Student.new("John","Doe","john@gamil.com","john123","pass123")
puts mark
puts john
mark.last_name = john.last_name
puts "mark last name is changed now"
puts mark



