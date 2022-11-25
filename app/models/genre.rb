class Genre < ApplicationRecord
    has_many :shops
	has_many :recommends
	validates :genre_name, presence: true
end
