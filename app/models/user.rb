class User < ApplicationRecord
    has_secure_password
    has_many :users_favorites 
    has_many :favorites, through: :users_favorites 

    validates :username, presence: true, uniqueness: {message: ' : User with the same username already exists!'} 
    validates :password_digest, presence: true 
end
