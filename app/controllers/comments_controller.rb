class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @post.comments.push(@comment)
    if @comment.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit

  end

  def destroy

  end

  private
    def comment_params
      params.require(:comment).permit(:comment_body)
    end
end
