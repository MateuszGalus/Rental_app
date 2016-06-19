class Booking < ActiveRecord::Base
	belongs_to :car
	validates :customer_name, presence: true
	validate :date_validation

	private
	def date_validation
		errors.add(:booked_from, "is not available") unless Booking.where("? >= booked_from AND ? <= booked_to",
															booked_from, booked_from).count == 0
		errors.add(:booked_to, "is not available") unless Booking.where("? >= booked_from AND ? <= booked_to",
															booked_to, booked_to).count == 0
	end
end
