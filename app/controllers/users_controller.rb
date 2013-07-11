class UsersController < ApplicationController


	def signup
		User.create!(user_params)
		redirect_to '/'
	end

def login
    @user = User.find_by_user_name(params[:user][:user_name])
    if 
    	@user && User.authenticate(params[:user][:password])
    	render 'users/userprofile'
    else
    	flash[:error] = "user name or password is invalid"
    end
end

private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
