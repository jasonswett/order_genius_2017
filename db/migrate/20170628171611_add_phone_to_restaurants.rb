class AddPhoneToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :phone, :string, null: false
    add_index :restaurants, :phone, unique: true
  end
end
