

module Crud

    puts "Module Crud Activated"

    require 'bcrypt'

    def bcrypt_password(password)  #we can also use self instead of class name(in this case is Crud)
        BCrypt::Password.create(password)
    end

    def verify_password(password)
        BCrypt::Password.new(password)
    end

    def  create_secure_users(list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = bcrypt_password(user_record[:password])
        end
        return list_of_users
    end

    

    def Crud.authenticate_user(username,password,list_of_users)

        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_password(user_record[:password])== password
                return user_record
            end
        end
        "Wrong Username Password"
    end

end

 

 
