class Station < ApplicationRecord
	has_many :shops
	has_many :recommends
	validates :station_name, presence: true
end
