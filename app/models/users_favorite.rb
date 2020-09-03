class Users_favorite < ApplicationRecord
    belongs_to :user 
    belongs_to :favorite 

    #validates  :favorite_id, uniqueness: { scope: :event_id,
    #message: 'You already added this recipe to your favorites '}
end