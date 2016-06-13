class StoriesController < ApplicationController
	def profile
    	@stories = Story.all
  	end

  def display
    @stories = Story.find(params[:id])
  end
end
