class Api::V1::FavoritesController < ApplicationController
  skip_before_action :authorized

        def index
          @favorites = Favorite.all 
          render json: @favorites
        end

        def create
          @favorite = Favorite.create(favorite_params)
            render json: { favorite: FavoriteSerializer.new(@favorite), jwt: @token }, status: :created
        end
       
        private
       
        def favorite_params
          params.require(:favorite).permit(:title, :user_id, :ingredients, :instructions)
        end
end
