class TipsController < ApplicationController
	before_action :load_footer
 
	def new
	
	end
	
	def create
		@category = Category.find(params[:category_id])
		@tip = @category.tips.new(tip_params)
		if @tip.save
			redirect_to category_path(@tip.category.id)
		else
			redirect_to category_path(@category)
		end
	end

	def destroy
		@tip = Tip.find
		@tip.destroy
		redirect_to action: 'index'
	end

	def show
		@tip = Tip.find(params[:id])
		@tips = Tip.order("description").page(params[:page]).per(5)
	end

	def tip_params
		params.require(:tip).permit(:description, :user_id)		
	end





	private
		def load_footer
			@categories = Category.all
		end	
end
