class FriendsController < ApplicationController
  def create
    @friend = Friend.create(friend_params)
    redirect_to '/'
  end

  private
  def friend_params
    params.require(:friend).permit(:requester_id, :requestee_id, :status)
  end

end
