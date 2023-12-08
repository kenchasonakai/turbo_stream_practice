class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    # render :createを省略して使える
    # create.turbo_stream.erbを探しに行く
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    # render :destroyを省略して使える
    # destroy.turbo_stream.erbを探しに行く
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
