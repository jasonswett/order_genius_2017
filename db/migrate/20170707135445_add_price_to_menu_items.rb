class AddPriceToMenuItems < ActiveRecord::Migration[5.1]
  def change
    add_column :menu_items, :price, :decimal, precision: 8, scale: 2, null: false, default: 0
  end
end
