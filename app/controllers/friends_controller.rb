class FriendsController < ApplicationController
  def create
    # if !existing_friendship?(params[:friend][:requestee_id])
      @friend = Friend.create(friend_params)
      flash["confirm"] = "Friend request sent"
      redirect_back fallback_location: '/'
    # end
  end

  private
  def friend_params
    params.require(:friend).permit(:requester_id, :requestee_id)
  end
end

# TODO: Make it so in the user profile page that we use the existing friend logic to not show the button if they are friends
# TODO: Need to make being a friend automatic so change that on the database
# TODO: How to show friends list on the profile page
# TODO: button on the user profile page to take you to their friends list
# TODO: create a new view for the friends 'index' and function in controller to show only their friends
# TODO: get the users that you are friends with and store in an object , will have to use both requestee and requester ids in two seperate objects?