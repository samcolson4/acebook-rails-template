class FriendsController < ApplicationController
  def create
    @friend = Friend.create(friend_params)
    # flash["confirm"] = "Friend request sent"
    redirect_back fallback_location: '/'
  end

  private
  def friend_params
    params.require(:friend).permit(:requester_id, :requestee_id)
  end
end

# TODO: How to show friends list on the profile page
# TODO: button on the user profile page to take you to their friends list
# TODO: create a new view for the friends 'index' and function in controller to show only their friends
# TODO: get the users that you are friends with and store in an object , will have to use both requestee and requester ids in two seperate objects?