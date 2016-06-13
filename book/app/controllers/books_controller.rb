class BooksController < ApplicationController
	def new
		@book = Buk.new
	end
	def save
		@book = Buk.new(book_params)
			if @book.save
				@books = Buk.all.order("id desc")
			else
				render 'index'
			end
	end
	def index
		@book = Buk.new
		@books = Buk.all.order("id desc")
		@books  = Buk.paginate(:page => params[:page], :per_page=>5)

	end
	def edit
	    @book = Buk.find(params[:id])
	    @books = Buk.all.order("id desc")
	end 
	def update
		@book = Buk.find(params[:id])
 
	    if @book.update(book_params)
	      redirect_to root_path
	    else
	      render 'edit'
	    end
	end
	def show
		@book = Buk.find(params[:id])
		render :partial => "show_books" 
	end
	def view
		@book = Buk.new
		@books = Buk.all.order("id desc")
	end
	def delete_book
	    @book = Buk.find_by_id(params[:id])
	    @book.destroy
	   	@books = Buk.all.order("id desc")


	end
	private
	 def book_params
 		 	params.require(:buk).permit(:name, :title, :auther, :privecy)
 	end
end
