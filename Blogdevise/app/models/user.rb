class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    before_save { self.email = email.downcase }
    
    
   has_many :articles, dependent: :destroy  #association part  
   
  


   
end