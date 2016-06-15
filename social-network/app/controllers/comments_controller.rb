class CommentsController < ApplicationController
	# before_action :check_comment
  # before_action :set_user

    def new
      @comment = Comment.new
    end
    def cmnt
      @comments = Comment.all
      session[:story_id] = params[:id]
    end
    def create
      @comment = Comment.new(comment_params)
      @comment.user_id=session[:user_id]
      @comment.story_id=session[:story_id]
      p session[:user_id]

      if @comment.save
        redirect_to :back, notice: 'Your comment was successfully posted!'
      else
        redirect_to :back, notice: "Your comment wasn't posted!"
      end
    end
    def destroy
      @comment = Comment.find_by_id(params[:id])
      @comment.destroy
      @comments = Comment.all.order("id desc")
  end
    def check_comment
          
    end

    private

    def comment_params
      params.require(:comment).permit(:comment,:story_id,:user_id)
    end

    # def find_commentable
    #   @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    #   @commentable = Story.find_by_id(params[:story_id]) if params[:story_id]
    # end

end
