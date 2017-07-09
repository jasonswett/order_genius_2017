class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
  accepts_nested_attributes_for :order_menu_items

  def description
    menu_items.map(&:name).join(', ')
  end

  def total
    menu_items.map(&:price).inject(:+)
  end
end
