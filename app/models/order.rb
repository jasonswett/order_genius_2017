class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
  accepts_nested_attributes_for :order_menu_items

  def description
    ''
  end

  def total
    0
  end
end
