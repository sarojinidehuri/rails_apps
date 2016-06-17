class AssignsController < ApplicationController
	def assign
	 	@assign = Assign.new
	 	@assigns = Assign.all.order("id desc")
	 end
	  def create
		@assign = Assign.new(assign_params)
					 if @assign.save
			 		@assigns = Assign.all.order("id desc")
			 		redirect_to '/assign'
			 else
			 		render '/assign'
			 end
	end
	private
		def assign_params
			params.require(:assign).permit(:standard_id, :subject_id)
		end
end
