class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to root_path
  end


  def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy 
   redirect_to root_path
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    
  end

  def update
    @comment = Comment.find(params[:id])

    if current_user.id == @comment.user_id
      if @comment.update(comment_params)
        redirect_to root_path
      else  
        render 'edit'
      end
    else 
      redirect_to root_path, :status => 403
    end
  end

  private
  def comment_params  
    params.require(:comment).permit(:body, :user_id)
  end

end

