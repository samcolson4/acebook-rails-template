class FriendsController < ApplicationController
  def create
    @friend = Friend.create(friend_params)
    flash["confirm"] = "Friend request sent"
    redirect_back fallback_location: '/'
  end

  private
  def friend_params
    params.require(:friend).permit(:requester_id, :requestee_id)
  end

end
