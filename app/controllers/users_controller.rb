class UsersController < ApplicationController

  skip_before_action :authorised, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
    friend_ids = unique_ids(@user)
    @friends = user_names(friend_ids, @user)
    @profile_posts = get_profile_posts(params[:id])
    @post = Post.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def unique_ids(user)
    friends = Friend.where("requester_id = ? or requestee_id = ?", [user.id],[user.id])

    user_ids = []

    friends.each { |friend| 
      user_ids << friend.requestee_id
      user_ids << friend.requester_id
    }

    uniq_ids = user_ids.uniq
  end

  def user_names(ids, user)
    users = []

    ids.each { |id|
      users << User.find(id)
    }
    users.delete(user)
    users
  end

  def get_profile_posts(profile_id)
    Post.where("posted_to_id = ?", [profile_id])
  end

end
