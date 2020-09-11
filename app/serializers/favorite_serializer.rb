class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :title, :user_id, :ingredients, :instructions, :image
    
    belongs_to :user
  end
  