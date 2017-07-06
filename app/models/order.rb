class Order < ApplicationRecord
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items


  def total
  	totes = 0
  	menu_items.each do |i|
  		totes += i.price
  	end
  	
  	return totes
  end

end
