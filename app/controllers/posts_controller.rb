class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(params.require(:post).permit(:title, :body))
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    @post.save
    redirect_to @post
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to post_path(@posts)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

end
