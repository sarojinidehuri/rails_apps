class UsersController < ApplicationController
	def sign_up
		@user = User.new
	end
	def create
		@user = User.new(user_params)
	 		#respond_to do |format|
	 		 	if @user.save
	 		 		# flash[:notice] = "Successfully created........"
	 		 		# format.js
	 		 		redirect_to '/login'
	 		 	else
	 		 		flash[:error] = "Please resister again"
	 		 		# format.js {render action: 'sign_up'}
	 		 		# format.html{render action: 'sign_up'}
	 		 		render 'sign_up'
	 		 		# rander 'create'
	 		 	end
	 # 	@user.save
		# redirect_to '/login'
	end
	def edit
	    @user = User.find(params[:id])
	end 
	def update
		@user = User.find(params[:id])
 
	    if @user.update(user_params)
	      redirect_to '/listing'
	    else
	      render 'edit'
	    end
	end
	def destroy
	    @user = User.find(params[:id])
	    @user.destroy
	 
	    redirect_to "/listing"
	  end
 	private
 		 def user_params
 		 	params.require(:user).permit(:name, :email, :username, :password, :conform_password, :age, :phone_no, :address)
 		 end
	def home
	end
	
end
