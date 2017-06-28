class CreateBusinessModels < ActiveRecord::Migration[5.1]
  def change
    create_table :business_models do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :business_models, :name, unique: true
  end
end
