class LikesController < ApplicationController
  before_action :find_post

  def find_post
    @post = Post.find(params[:post_id])
  end

  def create
    p @post
    @post.likes.create(user_id: current_user)
    #Like.create(post_id: params[:post_id], user_id: current_user )
    redirect_to root_url
  end

end
