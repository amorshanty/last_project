class Tip < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	validates :comment, presence: true, length: { in: 2...225 }

end
