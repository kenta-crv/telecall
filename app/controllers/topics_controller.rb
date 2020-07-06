class TopicsController < ApplicationController
before_action :authenticate_admin!, except: [:index, :show]
  def index
    @topics = Topic.order(created_at: "DESC").page(params[:page])
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path
    else
      render 'new'
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
     redirect_to topics_path
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to topics_path
    else
      render 'edit'
    end
  end

  private
  def topic_params
    params.require(:topic).permit(
      :title, #タイトル
      :file,  #写真
      :keyword, #キーワード
      :description, #説明
      :body #本文
      )
  end
end
