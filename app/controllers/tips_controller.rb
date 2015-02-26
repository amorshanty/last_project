class TipsController < ApplicationController
	
	def new
	
	end
	
	def create
		@category = Category.find(params[:category_id])
		@tip = @category.tips.new(tip_params)
		if @tip.save
			redirect_to category_path(@tip.category.id)
		else
			render action: 'show'			
		end
	end

	def destroy
		@tip = Tip.find
		@tip.destroy
		redirect_to action: 'index'
	end

	def show
		@tip = Tip.find(params[:id])
	end

	def tip_params
		params.require(:tip).permit(:description, :user_id)		
	end

end
