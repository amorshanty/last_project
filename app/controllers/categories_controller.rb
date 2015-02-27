class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def home
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@tips = @category.tips
	end

end