class StandardsController < ApplicationController
	def add_standard
		@standard = Standard.new
	end
	def create
		@standard = Standard.new(standard_params)
			 if @standard.save
			 		redirect_to '/users/dashboard'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'sign_up'
			 end
	end
	 private
		def standard_params
			params.require(:standard).permit(:user_id, :standard_name, :subject_name => [])
		end
end
