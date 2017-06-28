class AddBusinessModelIdToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :business_model, foreign_key: true
  end
end
