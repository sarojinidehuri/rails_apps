class TeachersController < ApplicationController
	def add_teacher
		@teacher = Teacher.new
	end
	def valid_teacher
		      @teacher_name = params[:teacher_name]

		     if (teacher = Teacher.where(:teacher_name => params[:teacher_name]).first).present?
		      session[:teacher_name] = teacher.teacher_name
		      session[:teacher_id] = teacher.id
		      p '============success================'
		      flash[:notice] = "add teacher....!!!"
		      flash[:color]= "valid"
		      redirect_to "/users/dashboard"
		    else
		      p '==========================failure=================='
		      p params
		      flash[:notice] = "Something is wrong...."
		      flash[:color]= "invalid"
		      redirect_to "/add_teacher"
		    end
		    
	 end
	 def create
		@teacher = Teacher.new(teacher_params)
			 if @teacher.save
			 		redirect_to '/users/dashboard'
			 else
			 		flash[:error] = "Please resister again"
			 		render 'sign_up'
			 end
	end
	 private
		def teacher_params
			params.require(:teacher).permit(:user_id, :teacher_name, :teacher_age, :phone_no, :standard_name, :subject_name => [])
		end
	
end
