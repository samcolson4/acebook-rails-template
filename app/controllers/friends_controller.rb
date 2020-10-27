class FriendsController < ApplicationController
  def create
    if !existing_friendship?(params[:friend][:requestee_id])
      @friend = Friend.create(friend_params)
      flash["confirm"] = "Friend request sent"
      redirect_back fallback_location: '/'
    end
  end

  private
  def friend_params
    params.require(:friend).permit(:requester_id, :requestee_id)
  end

  def existing_friendship?(requestee)
    existing_friend_1 = Friend.find_by requester_id: current_user.id, requestee_id: requestee
    existing_friend_2 = Friend.find_by requester_id: requestee, requestee_id: current_user.id

    existing_friend_1 != nil || existing_friend_2 != nil
  end
end
