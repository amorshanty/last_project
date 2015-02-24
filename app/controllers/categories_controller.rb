class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def home
		@categories = Category.all
	end

	def show
		@category = Category.find params[:id]
	end

	# @category.each do category
	# 	link to value, category_path

end