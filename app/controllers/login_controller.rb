class LoginController < ApplicationController

	def create
		user = User.find_by(email: params[:email])
	  if user.authenticate(params[:password])
	    session[:current_user_id] = user.id
	    redirect_to categories_path
	  else
	  	redirect_to root_path
	  end
  end

end
