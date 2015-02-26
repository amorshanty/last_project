class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def home
		@categories = Category.all
	end

	def show
		@user_id = session[:current_user_id]
		@category = Category.find params[:id]
		@tip = @category.tips.build
		@tips = @category.tips
	end

end