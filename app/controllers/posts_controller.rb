class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url, notice: "Post was successfully created."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: "Post was successfully destroyed."
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
