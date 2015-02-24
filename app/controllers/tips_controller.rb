class TipsController < ApplicationController
	
	def new
		@tip = Tip.new
	end
	
	def create
		@tip = Tip.new(user_params)
		if @tip.save
			redirect_to action: 'index'
		else
			render action: 'show'			
		end
	end

	def destroy
		@tip = Tip.find
		@tip.destroy
		redirect_to action: 'index'
	end

end
