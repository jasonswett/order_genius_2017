class Restaurant < ApplicationRecord
  has_many :menu_items
  has_many :restaurant_tags
  has_many :tags, through: :restaurant_tags
  belongs_to :business_model

  validates :name, presence: true
  validates :phone, presence: true

  def to_s
    name
  end
end
