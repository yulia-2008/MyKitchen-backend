class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :user_id
      t.string :ingredients
      t.string :instructions
    end
  end
end
