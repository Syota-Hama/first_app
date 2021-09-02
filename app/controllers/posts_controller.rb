class PostsController < ApplicationController
  
  def index #indexアクションを定義した
    @posts = Post.all
  end   

  def new #投稿フォームでは入力フォームを表示させるだけのため、データの表示は行わない。よって、アクションを定義するのみで、特に処理を記述する必要がない。
  end

  def create
    Post.create(content: params[:content])
  end

end
