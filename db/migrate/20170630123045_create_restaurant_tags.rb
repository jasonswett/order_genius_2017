class CreateRestaurantTags < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_tags do |t|
      t.references :restaurant, foreign_key: true, null: false
      t.references :tag, foreign_key: true, null: false

      t.timestamps
    end

    add_index :restaurant_tags, [:restaurant_id, :tag_id], unique: true
  end
end
