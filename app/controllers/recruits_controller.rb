class RecruitsController < ApplicationController
  def index
    @recruit = Recruit.new
    render :action => 'index'
  end

  def confirm
    @recruit = Recruit.new(recruit_params)
    #@recruit.subsidy = params[:recruit][:subsidy]
    if @recruit.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
    # binding.pry
  end

  def thanks
    @recruit = Recruit.new(recruit_params)
    RecruitMailer.received_email(@recruit).deliver
    RecruitMailer.send_email(@recruit).deliver
  end

  private
  def recruit_params
    params.require(:recruit).permit(
      :first_name, #苗字
      :last_name, #名前

      :tel, #電話番号
      :mail, #メールアドレス
      :postnumber, #郵便番号
      :address, #住所

      :select_1, #正社員/アルバイト
      :select_2, #週稼働時間（アルバイトの場合）
      :select_3, #稼働開始希望日
      :remarks, #テレアポ業務稼働経験

      :other_1,
      :other_2,
      :other_3,
      :other_4,
      )
  end
end
