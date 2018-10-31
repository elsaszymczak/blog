class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :detroy]

  def index
    @posts = Post.all.order('created_at desc')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
   @post = Post.new(post_params)
   @post.save
   redirect_to posts_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
