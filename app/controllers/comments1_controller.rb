class Comments1Controller < ApplicationController

  def create
    @comment = Comment.new(post_params)
    @comment.save
    redirect_to posts_path
end

private def post_params
    params.require(:comment).permit(:comment, :post_id)
end

#   def create
#     @post = Post.find(params[:id])
#     @comment1 = @post.comments.create(comment_params)
#     redirect_to posts_path(@post)
# end

# private comment_params
#   params.require(:comment).permit(:comment)
# end

end
