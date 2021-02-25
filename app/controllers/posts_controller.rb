class PostsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  add_breadcrumb "記事一覧", :posts_path
  def index
    @posts = Post.order(created_at: "DESC").page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
    add_breadcrumb @post.title
  end

  def new
    @post = Post.new
    add_breadcrumb "新規記事投稿", new_post_path
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    add_breadcrumb "記事編集", edit_post_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
     redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(
      :title, #タイトル
      :file,  #写真
      :choice,  #カテゴリー
      :keyword, #キーワード
      :description, #説明
      :body #本文
      )
  end
end
