class PostsController < ApplicationController
  def index
    @user = User.includes(posts: [:comments]).find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(title: post_params[:title], text: post_params[:text], author: current_user)
    if post.save
      redirect_to "/users/#{post.author_id}"
    else
      redirect_to new_user_post_path
    end
  end

  private

  def author_id
    params.require(:user_id)
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
