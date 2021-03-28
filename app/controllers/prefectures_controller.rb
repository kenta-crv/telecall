class PrefecturesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  add_breadcrumb "求人一覧", :recruit_path
  def index
    @prefectures = Prefecture.order(created_at: "DESC").page(params[:page])
  end

  def show
    @prefecture = Prefecture.find(params[:id])
    add_breadcrumb @prefecture.title
    add_breadcrumb "『#{@prefecture.area}』業務委託テレアポアルバイト求人"
  end

  def new
    @prefecture = Prefecture.new
    add_breadcrumb "求人記事投稿", new_prefecture_path
  end

  def create
    @prefecture = Prefecture.new(prefecture_params)
    if @prefecture.save
      redirect_to prefectures_path
    else
      render 'new'
    end
  end

  def edit
    @prefecture = Prefecture.find(params[:id])
    add_breadcrumb "求人編集", edit_prefecture_path
  end

  def destroy
    @prefecture = Prefecture.find(params[:id])
    @prefecture.destroy
     redirect_to prefectures_path
  end

  def update
    @prefecture = Prefecture.find(params[:id])
    if @prefecture.update(prefecture_params)
      redirect_to prefectures_path
    else
      render 'edit'
    end
  end

  private
  def prefecture_params
    params.require(:prefecture).permit(
      #:title,
      :area,
      #:salary,
      #:time,
      #:week,
      #:contract,
      #:price,
      )
  end
end
