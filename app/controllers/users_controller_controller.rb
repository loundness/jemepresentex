class UsersControllerController < ApplicationController
	def new
		
	end	

	def create
		 username = params[:username]
   		 bio = params[:bio]

        user = User.create(username: username, bio: bio)
        user = User.find_by_username(username)
		
		redirect_to '/home'
		end	

	def show
		@user = User.find_by_username(params[:username])



	end	

end
