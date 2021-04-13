class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @posts = Post.where(name: params[:name])
  end
end
