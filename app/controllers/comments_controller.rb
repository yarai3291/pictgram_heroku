class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new
    @comment.topic_id = params[:comment][:topic_id]
    @comment.user_id = current_user.id
    @comment.content = params[:comment][:content]
    if @comment.save
      flash[:success] = 'コメントを投稿しました。'
      redirect_to topics_path
    else
      flash.now[:danger] = "コメントに失敗しました。"
      redirect_to comments_new_path
    end
  end

  def destroy
  end
    
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end