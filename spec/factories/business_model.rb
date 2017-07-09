FactoryGirl.define do
  factory :business_model do
    name { Faker::Lorem.characters(10) }
  end
end
