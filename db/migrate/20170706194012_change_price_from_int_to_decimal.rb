class ChangePriceFromIntToDecimal < ActiveRecord::Migration[5.1]
  def change
  	change_column :menu_items, :price, :decimal, null: false, default: 0.0, precision: 15, scale: 2
  end
end
