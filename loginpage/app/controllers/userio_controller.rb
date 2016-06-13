# class UserioController < ApplicationController

class UserioController < ApplicationController
# http_basic_authenticate_with name: "henna123", password: "gadha"
before_action :check_user, only: [:dashboard] 

  def login
    #@user = User.new 
    # flash[:notice] = "Welcome to login page!!!"
  end

  def validate
   # @user = User.new(params[:user])
      @username = params[:username]
      @password = params[:password]
    if (user = User.where(:username => params[:username], :password => params[:password]).first).present?
      session[:username] = user.username
      session[:user_id] = user.id
      # session[:password] = @password
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
    #render "new"
  end
  def dashboard
    #@username = session[:username]
  end

  # def edit
  #   @user = User.find(params[:id])
  # end 
  def logout
    session[:username] = nil
    session[:user_id] = nil
    
    # flash[:notice] = "Logout successfull....."
    # redirect_to root_path
  end
  def check_user
    unless session[:username]
      redirect_to root_path
    end
  end
  def users
        @users = User.all
        respond_to do |format|
          format.html  #index.html.erb
          format.xml  { render xml: @users}
          format.json { render json: @users}
        end
      end
   def listing
     @users = User.all.order("id desc")
   end
end