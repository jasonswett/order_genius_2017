class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menu_items
  accepts_nested_attributes_for :order_menu_items
end
