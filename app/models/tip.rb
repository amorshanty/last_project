class Tip < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_many :ratings

	validates :description, presence: true, length: { in: 2...225 }
	validates :user_id, :category_id, presence: true

	def average_rating
		@value = 0
	  self.ratings.each do |rating|
	    @value = @value + rating.value
	  end
	  @total = self.ratings.size
	  '%.2f' % (@value.to_f / @total.to_f)
	end


	def update_average_rating
    @value = 0
    self.ratings.each do |rating|
      @value = @value + rating.value
    end
    @total = self.ratings.size

    update_attributes(average_rating: @value.to_f / @total.to_f)
  end

end
