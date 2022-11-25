FactoryBot.define do
  factory :shop_comment do
    comment { Faker::Lorem.characters(number:50) }
    user
    shop
  end
end