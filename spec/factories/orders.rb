FactoryGirl.define do
  factory :order do
    restaurant
    customer_name { Faker::Lorem.characters(10) }
  end
end
