class LoginController < ApplicationController
  before_action :load_footer
 
	def create
		user = User.find_by(email: params[:email])
	  if user && user.authenticate(params[:password])
	    session[:current_user_id] = user.id
	    redirect_to categories_path
	  else
	  	redirect_to root_path
	  end
  end

  def check_logged_or_not
     if !current_user
       render 'sessions/register'
     else 
       puts "Hello! #{session[:email]}"
     end
   end

  def destroy
    session[:current_user_id] = nil
    redirect_to new_user_path
  end

  private
  
    def load_footer
      @categories = Category.all
    end

end
