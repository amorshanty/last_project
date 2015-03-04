class Tip < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_many :ratings

	validates :description, presence: true, length: { in: 2...225 }
	validates :user_id, :category_id, presence: true

	def average_rating
		ratings.average(:value)
	end

end
