class EstimatesController < ApplicationController
  layout 'ritonaru'
  def index
    @estimate = Estimate.new
    render :action => 'index'
  end

  def confirm
    @estimate = Estimate.new(estimate_params)
    if @estimate.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @estimate = Estimate.new(estimate_params)
    @estimate.save
    EstimateMailer.received_email(@estimate).deliver
    EstimateMailer.send_email(@estimate).deliver
  end

  private
  def estimate_params
    params.require(:estimate).permit(
      :company, #会社名
      :name, #担当者名
      :tel, #電話番号
      :mail, #メールアドレス
      :address, #住所
      :url, #URL

      :business, #アポ希望ビジネス
      :number, #月間獲得件数
      :start, #開始時期
      :target_industry, #ターゲット業種
      :target_employment, #ターゲット人数規模
      :document_1, #資料１
      :document_2, #資料２
      :document_3, #資料３
      :remarks #事業内容その他
    )
  end
end
