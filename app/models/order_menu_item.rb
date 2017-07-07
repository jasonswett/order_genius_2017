class OrderMenuItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item

  validates :menu_item, uniqueness: { scope: :order }
end
