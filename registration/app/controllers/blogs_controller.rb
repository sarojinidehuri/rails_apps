class BlogsController < ApplicationController
	def dashboard
            @blog = Blog.new
    end


    def create
            @blog = Blog.new(params[:blog].permit(:title, :text, :user, :screen))

            if @blog.save
                    redirect_to blogs_path
            else
                    render 'new'
            end
    end

    def show
            @blog = Blog.find(params[:id])
    end

    def index
            @blogs = Blog.all
    end

    def edit
            @blog = Blog.find(params[:id])
    end

    def update
            @blog = Blog.find(params[:id])

            if @blog.update(params[:blog].permit(:title, :text, :user, :screen))
                    redirect_to blogs_path
            else
                    render 'edit'
            end
    end

    def destroy
            @blog = Blog.find(params[:id])
            @blog.destroy

            redirect_to blogs_path
    end

    # def upload
    #         uploaded_io = params[:blog][:attachment]
    #         File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
    #         file.write(uploaded_io.read)
    #         end
    # end

    private
            def blog_params
                    params.require(:blog).permit(:blog_name, :blog_description)
            end

end
