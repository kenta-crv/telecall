class EstimatesController < ApplicationController
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
      :business, #内容
      :remarks #本文
    )
  end
end
