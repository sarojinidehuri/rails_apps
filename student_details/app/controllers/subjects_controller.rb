class SubjectsController < ApplicationController
	def add_subject
		@subject = Subject.new
		@subjects = Subject.all.order("id desc")
	end
	def create
		@subject = Subject.new(subject_params)
		@subject.user_id=session[:user_id]
			 if @subject.save
			 		redirect_to '/add_subject'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'add_subject'
			 end
	end
	def edit
	    @subject = Subject.find(params[:id])
	    @subjects = Subject.all.order("id desc")
	end
	def delete_subject
	    @subject = Standard.find_by_id(params[:id])
	    @subject.destroy
	   	@subjects = Subject.all.order("id desc")
	end
	 private
		def subject_params
			params.require(:subject).permit(:user_id, :standard_name, :subject_name)
		end
end
