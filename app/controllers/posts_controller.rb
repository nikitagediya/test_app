class PostsController < ApplicationController
    def index
        @posts = Post.all
        # @content_first = "This is some sample text for our awesome new Ruby blog";
        # @content_second = "This is some sample text for our awesome new Ruby blog";
    end
    def show
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
        @category = Category.all
    end
    def create
        @post = Post.new(post_params)
       if @post.save
            # render json: @post, status: :created
            redirect_to posts_path, :notice => "your post has been saved"
       else 
        # render json: @post.errors, status: :unprocessable_entity
        render "new"
    end
end
    def edit
        @post = Post.find(params[:id])
        
    end
    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to posts_path, :notice => "your post has been updated"
        else
            render "edit"
        end
    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => "Your post has been deleted"
    end
    
  def post_params
    params.require(:post).permit(:title, :body ,:category_id)
  end
end
