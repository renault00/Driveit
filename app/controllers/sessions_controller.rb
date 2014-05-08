class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		
		if user && user.authenticate(params[:session][:password])
		# Sign the user in and redirect to the user's show page.
		sign_in_ user
		redirect_back_or root_path
		flash.now[:success] = "Succesfuly signed in"
		else
		flash.now[:error] = 'Invalid email/password combination'
		render 'new'
		end
	end

	def destroy
		sign_out_
		redirect_to root_path
	end
end
