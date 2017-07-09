require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe 'when price is a number' do
    it 'is not valid' do
      menu_item = build(:menu_item, price: '10.00')

      expect(menu_item).to be_valid
    end
  end

  describe 'when price is not a number' do
    it 'is not valid' do
      menu_item = build(:menu_item, price: 'asdf')

      expect(menu_item).not_to be_valid
    end
  end
end
