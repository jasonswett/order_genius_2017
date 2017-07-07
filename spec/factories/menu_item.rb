FactoryGirl.define do
  factory :menu_item do
    restaurant
    name { Faker::Lorem.characters(10) }
  end
end
