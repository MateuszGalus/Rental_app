class Car < ActiveRecord::Base
	belongs_to :category
	has_many :bookings

	validates :name, presence: true
	validates :description, presence: true
end
