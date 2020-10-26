class SessionsController < ApplicationController

  skip_before_action :authorised, only: [:new, :create, :welcome]

  def new
  end

  def create
    if User.find_by(email: params[:email])
    @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id]= @user.id
        redirect_to '/'
      else
        flash[:invalid_password] = "Password is invalid  "
        redirect_to '/login'
      end
    else
      flash[:invalid_email] = "Email is invalid"
      redirect_to '/login'
    end
  end

  def logout
    reset_session
    redirect_to '/'
  end

  # def login

  # end

  def welcome

  end
  
end
