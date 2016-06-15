class StudentsController < ApplicationController
	def add_student
		@student = Student.new
	end
	def valid_student
		      @student_name = params[:student_name]

		     if (student = Student.where(:student_name => params[:student_name]).first).present?
		      session[:student_name] = student.student_name
		      session[:student_id] = student.id
		      p '============success================'
		      flash[:notice] = "add student....!!!"
		      flash[:color]= "valid"
		      redirect_to "/users/dashboard"
		    else
		      p '==========================failure=================='
		      p params
		      flash[:notice] = "Something is wrong...."
		      flash[:color]= "invalid"
		      redirect_to "/add_student"
		    end
		    
	 end
	 def create
		@student = Student.new(student_params)
			 if @student.save
			 		redirect_to '/users/dashboard'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'sign_up'
			 end
	end
	 private
		def student_params
			params.require(:student).permit(:user_id, :student_name, :student_age, :gender, :standard_name, :subject_name => [])
		end
	
end
