class CategoriesController < ApplicationController
	before_action :load_footer
 
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

	private	
 
		def load_footer
			@categories = Category.all
		end

end