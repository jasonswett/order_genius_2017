class AddNotNullConstraintToRestaraurantsBusinessModelId < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :business_model_id, :integer, null: false
  end
end
