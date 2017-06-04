class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_posts_path
  end

  def index
    @user = User.find(params[:user_id])
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id, :image)
  end
end
