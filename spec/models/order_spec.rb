require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '#description' do
    describe 'when there are just two items' do
      it 'lists the two items' do
        order = create(:order)
        order.menu_items << create(:menu_item, name: 'Eggs')
        order.menu_items << create(:menu_item, name: 'Bacon')

        expect(order.description).to eq('Eggs, Bacon')
      end
    end
  end

  describe '#total' do
    describe 'when there are just two items' do
      it 'works' do
        order = create(:order)
        order.menu_items << create(:menu_item, price: 14.00)
        order.menu_items << create(:menu_item, price: 11.75)

        expect(order.total).to eq(25.75)
      end
    end
  end
end
