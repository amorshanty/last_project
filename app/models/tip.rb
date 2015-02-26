class Tip < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	validates :description, presence: true, length: { in: 2...225 }

end
