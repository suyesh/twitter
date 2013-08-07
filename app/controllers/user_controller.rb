class UserController < ApplicationController
	  def new
	  	@user = User.new
	  end

	def create 
		@user = User.create(user_params)
		if @user.save
			redirect_to home_path, :notice => "signed up!"
		else
			render "new"
		end
	end

	private 

	def user_params
		params.require(:user).permit(:f_name, :l_name, :email, :username, :password)
	end
end