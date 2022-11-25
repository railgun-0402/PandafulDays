FactoryBot.define do
  factory :shop do
    shop_profile { Faker::Lorem.characters(number:20) }
    shop_name { Faker::Lorem.characters(number:5) }
    shop_address { Faker::Lorem.characters(number:7) }
    genre
    station
    # shop_comment
    # shop_iamge
    # favorite
  end
end