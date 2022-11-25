FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:10) }
    email { Faker::Internet.email }
    profile { Faker::Lorem.characters(number:20) }
    password { 'password' }
    password_confirmation { 'password' }
    # shop_comment
    # recommend
    # favorite
  end
end