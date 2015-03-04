class RatingsController < ApplicationController
	before_action :load_footer
 
	def new
		@rating = Rating.new	
	end

	def create
		tip = Tip.find(params[:tip_id])
		@rating = tip.ratings.new(rating_params)	
		if @rating.save
			redirect_to category_path(tip.category)
		else
			render "WRONG!!!! MOTHERFUCKER"
		end
	end

	def show
		@rating = Rating.find(params[:id])		
	end

	def update
		@rating = Rating.find(params[:id])
	end


	private

		def load_footer
			@categories = Category.all
		end

		def rating_params
			params.require(:rating).permit(:value, :user_id)
		end

end
