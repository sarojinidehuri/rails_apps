class HomeController < ApplicationController
    http_basic_authenticate_with name: "humbaba", password: "5baa61e4"
	def home
		@name = "MY APP"
    end
    def about


        puts "------------------about"

    2
    	@value1 = params[:number1].to_f 
    	@value2 = params[:number2].to_f
    	@add = @value1 + @value2
    	@sub = @value1 - @value2
    	@mul = @value1 * @value2
    	@div = @value1 / @value2
    end

    def sample
    	puts "------------------ sample --------------------"
    	p params
    	# {"name"=>"amit", "address"=>"cuttack", "controller"=>"home", "action"=>"sample"}

    	p params['name']
    	p params[:name]

    	p params[:ids]
    	# p params(name)
        render :text => "Hi"
    end

    def demo
    	puts "-------------demo------------------"
    	p params
    	render :text => params

    	#@addition = params[:number1] + params[:number2]


    end

    def auth
        puts "-------> auth <-------"
        p params
        # dsdasdasdsadasd

        if (user = User.where(:username => params[:username], :password => params[:password]).first).present?
            flash[:notice] = "Authenticated....."
            #storre session here
            ##logout button 
            ##session[:user] = user
            #redirect_to 
        else
            flash[:notice] = "Credentials not found!"
            redirect_to "/calculation"
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


end
