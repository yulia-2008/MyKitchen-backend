class Create < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :name
    end
  end
end
