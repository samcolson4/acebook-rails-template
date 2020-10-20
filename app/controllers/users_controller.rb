class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      render 'users/new'
    end

    # render plain: params[:user].inspect

    #
    # @article = Article.new(article_params)
    #
    # if @article.save
    #   redirect_to @article
    # else
    #   render 'new'
    # end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
