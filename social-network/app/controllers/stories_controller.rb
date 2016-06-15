class StoriesController < ApplicationController
	# before_action :set_user
	def profile
    	 @stories = Story.all
    	 # @story = Story.new
  	end
  	def create
  		@story = Story.new(story_params)
  		@story.user_id=session[:user_id]
  		
  		#@stories = Story.find_by_user_id(session[:user_id])
	 		 	if @story.save
	 		 		redirect_to '/profile'
	 		 	else
	 		 		flash[:error] = "Please resister again"
	 		 		render 'profile'
	 		 	end
  	end
  	def cmnt
	    @story = Story.find(params[:id])
	    @stories = Story.all.order("id desc")
	end
	def destroy
	    @story = Story.find_by_id(params[:id])
	    @story.destroy
	   	@stories = Story.all.order("id desc")
	end
	def display
	  @stories = Story.find(params[:id])
	end
	private
	 def story_params
	 	params.require(:story).permit(:user_id, :blog_name, :blog_description)
	 end
end
