class FriendsController < ApplicationController
  def create
    @friend = Friend.new(friend_params)
    redirect_to '/'
  end

  private
  def friend_params
    params.require(:friend).permit()
  end

end
