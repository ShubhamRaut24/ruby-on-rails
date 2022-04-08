class UserResource < JSONAPI::Resource
    attributes :username, :email, :password

    has_many :articles  
end
