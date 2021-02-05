class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to post_url(@post)
    else
      #later
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
