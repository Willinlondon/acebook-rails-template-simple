class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.reverse
  end

  def show
   @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to home_path
  end
  
  private def post_params
    params.require(:post).permit(:post_content, :created_at)
  end

end
