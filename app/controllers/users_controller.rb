class UsersController < ApplicationController
 before_action :load_footer
 
	def new
	  @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:current_user_id] = @user.id
			redirect_to user_path(@user)
		else
			redirect_to '/'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
	  @user = User.find(params[:id])    
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to action: 'new'
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes user_params
			redirect_to user_path(@user)
		else
			redirect_to '/'
		end		
	end

	def user_params
		params.require(:user).permit(:name, :email, :password, :photo)
	end

	private

	def load_footer
		@categories = Category.all
	end

end