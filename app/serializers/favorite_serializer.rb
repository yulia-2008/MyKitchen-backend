class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :title, :user_id, :ingredients, :instructions
    
    belongs_to :user
  end
  