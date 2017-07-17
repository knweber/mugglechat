class UsersController < ApplicationController

  before_action :find_post, only: [:edit, :update, :show, :delete]

  def new
    @user = User.new(params.require(:user).permit(:title, :body))
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    @post.save
    redirect_to @post
  end

  def show
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
