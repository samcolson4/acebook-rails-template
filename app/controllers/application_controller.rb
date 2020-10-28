class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorised
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorised
    redirect_to '/welcome' unless logged_in?
  end

  def self.existing_friendship?(requester, requestee)
    existing_friend_1 = Friend.find_by requester_id: requester.id, requestee_id: requestee.id
    existing_friend_2 = Friend.find_by requestee_id: requester.id, requester_id: requestee.id

    existing_friend_1 != nil || existing_friend_2 != nil
  end
end
