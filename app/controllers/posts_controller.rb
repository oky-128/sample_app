class PostsController < ApplicationController
  def index
    # 重複した名前を一つにまとめてる
    @posts = Post.select(:name).distinct
  end
  
  def show
    @posts = Post.where(name: params[:name])
    
    # moneyだけの配列を作る
    @money_array = @posts.pluck(:money)
  end
  
  def new
  end
  
  def create
    @post = Post.new(date: params[:date], name: params[:name], money: params[:money],
                     job: params[:job], purpose: params[:purpose], memo: params[:memo])
    @post.save
    redirect_to("/index")
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.date = params[:date]
    @post.name = params[:name]
    @post.money = params[:money]
    @post.job = params[:job]
    @post.purpose = params[:purpose]
    @post.memo = params[:memo]
    @post.save
    redirect_to "/index"
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/index"
  end
end
