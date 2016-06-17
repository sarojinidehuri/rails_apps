class StudentsController < ApplicationController
	def add_student
		@student = Student.new
		@students = Student.all.order("id desc")
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
		@student.user_id=session[:user_id]
			 if @student.save
			 		@students = Student.all.order("id desc")
			 		redirect_to '/add_student'
			 else
			 		flash[:error] = "Please resister again"
			 		render '/add_student'
			 end
	end
	def edit_student
	    @student = Student.find(params[:id])
	end 
	def update
		@student = Student.find(params[:id])
 
	    if @student.update(student_params)
	      redirect_to '/add_student'
	    else
	      render 'edit'
	    end
	end
	def destroy
	    @student = Student.find(params[:id])
	    @student.destroy
	 
	    redirect_to "/add_student"
	  end
	 private
		def student_params
			params.require(:student).permit(:user_id, :student_name, :student_age, :gender, :assign_id, :standard_name, :subject_name)
		end
	
end
