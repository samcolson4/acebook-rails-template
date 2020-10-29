class LikesController < ApplicationController

  def create
    if !(already_liked?)
      @like = Like.create(post_id: params[:post_id], user_id: current_user.id)
    else
      @like = Like.find_by(user_id: current_user.id)
      @like.destroy
    end
    redirect_back fallback_location: '/'
  end

  private
  def already_liked?
    Like.where(user_id: current_user.id, post_id:
    params[:post_id]).exists?
  end

end
