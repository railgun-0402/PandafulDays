class Recommend < ApplicationRecord
    attachment :recommend_image
    belongs_to :user
	belongs_to :genre
	belongs_to :station
	validates :recommend_shop_name, presence: true
	validates :recommend_shop_profile, presence: true,length: {maximum:200}
	validates :recommend_shop_address, presence: true
end
