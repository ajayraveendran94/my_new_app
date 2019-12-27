class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end
  def create
  # render plain: params[:post].inspect
    @post = Post.new(post_parms)
    @post.save
    redirect_to @post
  end

  private

  def post_parms
    params.require(:post).permit(:name, :email, :mobile, :post)
  end
end
