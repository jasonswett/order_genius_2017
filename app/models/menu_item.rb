class MenuItem < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true
  validates :price, numericality: true
end
