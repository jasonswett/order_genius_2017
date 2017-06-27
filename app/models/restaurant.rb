class Restaurant < ApplicationRecord
  has_many :menu_items

  def to_s
    name
  end
end
