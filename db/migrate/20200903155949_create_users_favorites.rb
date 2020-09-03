class CreateUsersFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :users_favorites do |t|
      t.integer :user_id
      t.integer :favorite_id
    end
  end
end
