class User < ApplicationRecord
    has_secure_password
   
    has_many :favorites 

    validates :username, presence: true, uniqueness: {message: ' : User with the same username already exists!'} 
    validates :password_digest, presence: true 
end
