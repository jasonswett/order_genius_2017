require 'rails_helper'

RSpec.describe OrderMenuItem, type: :model do
  describe 'when there are two of the same order_id and menu_item_id' do
    it 'is not valid' do
      order_menu_item = create(:order_menu_item)

      other_order_menu_item = build(
        :order_menu_item,
        order: order_menu_item.order,
        menu_item: order_menu_item.menu_item
      )

      expect(other_order_menu_item).not_to be_valid
    end
  end
end
