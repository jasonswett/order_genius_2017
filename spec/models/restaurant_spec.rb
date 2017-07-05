require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'when name is not present' do
    it 'is not valid' do
      restaurant = FactoryGirl.build(:restaurant, name: nil)

      expect(restaurant).not_to be_valid
    end
  end

  describe 'when phone is not present' do
    it 'is not valid' do
      restaurant = FactoryGirl.build(:restaurant, phone: nil)

      expect(restaurant).not_to be_valid
    end
  end

  describe 'phone' do
    describe 'when phone is all numbers' do
      it 'is valid' do
        restaurant = FactoryGirl.build(:restaurant, phone: '5738353759')
        expect(restaurant).to be_valid
      end
    end

    describe 'when phone is invalid' do
      it 'is not valid' do
        restaurant = FactoryGirl.build(:restaurant, phone: 'askdjfgkjdfgkj')
        expect(restaurant).not_to be_valid
      end
    end
  end
end
