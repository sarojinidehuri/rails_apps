class SubjectsController < ApplicationController
	def add_standard
		@subject = Subject.new
	end
	def create
		@subject = Subject.new(subject_params)
			 if @subject.save
			 		redirect_to '/users/dashboard'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'sign_up'
			 end
	end
	 private
		def subject_params
			params.require(:subject).permit(:user_id, :standard_name, :subject_name => [])
		end
end
