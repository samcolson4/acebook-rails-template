class PostsController < ApplicationController

  def create
    @post = Post.create(post_params)
    session[:referrer] = nil
    redirect_back fallback_location: '/'
  end

  def index
    @post = Post.new
    @url_path_id = session[:referrer].match(/\/\d+\//).to_s.gsub("/", "") unless session[:referrer] == nil
    @posts = Post.all.order('created_at DESC')
  end

  def edit
    @post = Post.find(params[:id])
      if Time.now >=  (@post[:created_at] + 600)
      flash["#{@post.id}"] = "Post too old to edit"
      redirect_to root_path
      end

    if current_user[:id] != @post[:user_id]
      redirect_to root_path
    end
  end

  def update
    @post = Post.find(params[:id])

    if current_user.id == @post.user_id 
      if @post.update(post_params)
        redirect_to root_path
      else
        render 'edit'
      end
    else 
      redirect_to root_path, :status => 403
    end
  end 
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_back fallback_location: '/'
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id, :posted_to_id)
  end

end
