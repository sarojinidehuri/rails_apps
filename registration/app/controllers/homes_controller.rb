class HomesController < ApplicationController
	before_action :check_user, only: [:dashboard] 
	def sign_up
		@user = User.new
	end
	def home
		
	end
	def login
   
 	end
 		 def validate
		      @username = params[:username]
		      @password = params[:password]
		     # params[:username] = "1) OR 1=1--"
		      	# User.all(:conditions => ['title = ?', params[:username]])--------------attempt
		      	# User.all(:conditions => ["username = ?", params[:username]])------------attempt
		      	# @user = User.where("persons.name LIKE ?", "%#{params[:search]}%")-----------attempt


		    # 1.if( user=	User.where("username = '#{params[:username]}'").first)


		    # p users
		    # if( @user = User.where("user.name LIKE ?", "%#{params[:search]}%").first)

		     if (user = User.where(:username => params[:username], :password => params[:password]).first).present?
		      session[:username] = user.username
		      session[:user_id] = user.id
		      p '============success================'
		      p params
		      flash[:notice] = "Login first....!!!"
		      flash[:color]= "valid"
		      redirect_to "/dashboard"
		    else
		      p '==========================failure=================='
		      p params
		      flash[:notice] = "Something is wrong...."
		      flash[:color]= "invalid"
		      redirect_to root_path
		    end
		    
		  end
		  def sanitize
		  	
		  end
		  def test_sanitize
		 #  full_sanitizer = Rails::Html::FullSanitizer.new
			# @val = full_sanitizer.sanitize(params[:name])
			# tags = ["h1","input"]
   #      	attributes = ["href"]
   #     		@val = ActionController::Base.helpers.sanitize(params[:name], tags: tags, attributes: attributes)
			# render :text => @val

			# in text area
			 # @txt = params[:name]
		  	Usermailer.welcome('kishanptl.kp@gmail.com','Kishan',params[:name]).deliver
			 render :text => "sending successfully..........."
		  end
		  def dashboard
		  	
		  end
		    def blog
            @user = User.new(params[:name].permit(:title, :text, :user, :screen))

	            if @post.save
	                    redirect_to userss_path
	            else
	                    render '/dashboard'
	            end
   			end
		    def logout
			    session[:username] = nil
			    session[:user_id] = nil
			  end
			  def check_user
			    unless session[:username]
			      redirect_to root_path
			    end
			  end
			  def listing
			     @users = User.all.order("id desc")
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
	 		 	params.require(:user).permit(:name, :email, :username, :password, :age, :phone_no, :address)
	 		 end
end
