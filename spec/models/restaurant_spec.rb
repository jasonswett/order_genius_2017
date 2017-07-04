require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'when name is not present' do
    it 'is not valid' do
      franchise = BusinessModel.new(name: 'Franchise')

      restaurant = Restaurant.new(
        business_model: franchise,
        phone: '(573) 835-3845'
      )

      expect(restaurant).not_to be_valid
    end
  end
end
