class UsersController < ApplicationController
	before_action :check_user, only: [:dashboard] 

	def sign_up
		@user = User.new
	end
	def login
   		 
 	end
 	def dashboard
		 @students = Student.all 
		 @teachers = Teacher.all
		 @standards = Standard.all
		 @subjects = Subject.all	
	end
	def check_user
		 unless session[:username]
			 redirect_to root_path
		end
	end
 	def validate
		      @username = params[:username]
		      @password = params[:password]

		     if (user = User.where(:username => params[:username], :password => params[:password]).first).present?
		      session[:username] = user.username
		      session[:user_id] = user.id
		      p '============success================'
		      p session[:user_id]
		      p params
		      flash[:notice] = "Login first....!!!"
		      flash[:color]= "valid"
		      redirect_to "/dashboard"
		    else
		      p '==========================failure=================='
		      p params
		      flash[:notice] = "Something is wrong...."
		      flash[:color]= "invalid"
		      redirect_to login_path
		    end
		    
	 end
	 def create
		@user = User.new(user_params)
			 if @user.save
			 		redirect_to '/login'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'sign_up'
			 end
	end
	def logout
			    session[:username] = nil
			    session[:user_id] = nil
			    redirect_to '/login'
	 end
	 
	 private
		def user_params
			params.require(:user).permit(:name, :email, :username, :password, :confirm_password, :phone_no, :address)
		end
end
