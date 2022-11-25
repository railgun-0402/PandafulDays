FactoryBot.define do
  factory :recommend do
    recommend_shop_name { Faker::Lorem.characters(number:5) }
    recommend_shop_profile { Faker::Lorem.characters(number:50) }
    recommend_shop_address { Faker::Lorem.characters(number:5) }
    # genre
    # station
    # shop_comment
    # shop_iamge
    # favorite
  end
end