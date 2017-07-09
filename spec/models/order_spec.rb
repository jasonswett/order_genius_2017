require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'when there are just two items' do
    it 'lists the two items' do
      restaurant = create(:restaurant)
      order = create(:order)

      eggs = create(:menu_item, name: 'Eggs')
      bacon = create(:menu_item, name: 'Bacon')
      order.menu_items << eggs
      order.menu_items << bacon

      expect(order.description).to eq('Eggs, Bacon')
    end
  end
end
