class ShopImage < ApplicationRecord
	attachment :image
	belongs_to :shop
end
