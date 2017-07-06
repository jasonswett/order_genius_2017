class AddPriceToMenuItem < ActiveRecord::Migration[5.1]
  def change
    add_column :menu_items, :price, :int, null: false, default: 0
  end
end
