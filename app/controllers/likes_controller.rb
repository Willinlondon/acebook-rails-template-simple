class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    
    post_likes = Post.find_by(id: @like.post_id).likes_count

    respond_to do |format|
      format.json { render :json => post_likes }
    end

    # redirect_to posts_url 
  end

  def index
    @likes = Like.all
  end

  def destroy
    like = Like.find_by(user_id: like_params[:user_id], post_id: like_params[:post_id])
    like.destroy
    redirect_to request.referer
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
