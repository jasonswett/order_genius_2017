FactoryGirl.define do
  factory :restaurant do
    name { Faker::Lorem.characters(10) }
    phone { Faker::PhoneNumber.phone_number }
    business_model
  end
end
