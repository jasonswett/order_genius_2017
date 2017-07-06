class CreateOrderMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_menu_items do |t|
      t.references :order, foreign_key: true, null: false
      t.references :menu_item, foreign_key: true, null: false

      t.timestamps
    end
  end
end
