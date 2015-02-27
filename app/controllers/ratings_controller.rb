class RatingsController < ApplicationController

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
		@tip_rating = current_user.rating.find_by_tip_id(@tip.id)
	end

	private

		def rating_params
			params.require(:rating).permit(:value, :user_id)
		end

end
