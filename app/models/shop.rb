class Shop < ApplicationRecord
	attachment :main
	belongs_to :genre
	belongs_to :station
	has_many :shop_comments
	has_many :shop_images, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :shop_name, presence: true
	validates :shop_profile, presence: true,length: {maximum:200}
	validates :shop_address, presence: true
	accepts_attachments_for :shop_images, attachment: :image
	geocoded_by :shop_address
	after_validation :geocode, if: :shop_address_changed?

    def favorited_by?(user)
       if !user.nil?
           favorites.where(user_id: user.id).exists?
       end
    end
end
