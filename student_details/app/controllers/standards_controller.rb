class StandardsController < ApplicationController
	def add_standard
		@standard = Standard.new
		@standards = Standard.all.order("id desc")
	end
	def create
		@standard = Standard.new(standard_params)
		@standard.user_id=session[:user_id]
			 if @standard.save
			 		@standards = Standard.all.order("id desc")
			 		redirect_to '/add_standard'
			 else
			 		render '/add_standard'
			 end
	end
	# def edit
	#     @standard = Standard.find(params[:id])
	#     @standards = Standard.all.order("id desc")
	# end
	# def delete_class
	#     @standard = Standard.find_by_id(params[:id])
	#     @standard.destroy
	#    	@standards = Standard.all.order("id desc")
	# end
	 private
		def standard_params
			params.require(:standard).permit(:user_id, :standard_name)
		end
end
