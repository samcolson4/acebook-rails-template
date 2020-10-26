class CommentsController < ApplicationController

  def new 
    @comment = Comment.new
  end
  def edit
  end

  def create
    render plain: params[:comment].inspect

  end

  def update
  end 
end
