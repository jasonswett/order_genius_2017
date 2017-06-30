class Restaurant < ApplicationRecord
  has_many :menu_items
  belongs_to :business_model

  validates :name, presence: true
  validates :phone, presence: true

  def to_s
    name
  end
end
