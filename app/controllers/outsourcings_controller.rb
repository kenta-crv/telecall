class OutsourcingsController < ApplicationController
  def index
    @outsourcing = Outsourcing.new
    add_breadcrumb "応募フォーム", outsourcings_path
    render :action => 'index'
  end

  def confirm
    @outsourcing = Outsourcing.new(outsourcings_params)
    add_breadcrumb "応募フォーム", outsourcings_path
    add_breadcrumb "確認画面"
    if @outsourcing.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @outsourcing = Outsourcing.new(outsourcings_params)
    @outsourcing.save
    OutsourcingMailer.received_email(@outsourcing).deliver
    OutsourcingMailer.send_email(@outsourcing).deliver
    add_breadcrumb "応募フォーム", outsourcings_path
    add_breadcrumb "確認画面"
    add_breadcrumb "送信完了"
  end

  private
  def outsourcings_params
    params.require(:outsourcing).permit(
      :first_name,
      :last_name,
      :tel,
      :mail,
      :postnumber,
      :address,
      :age,
      :remarks,

      :other_1,
      :other_2,
      :other_3,
      :other_4,
      :one_first_date,
      :one_end_date,
      :second_first_date,
      :second_end_date,
      :third_first_date,
      :third_end_date
      )
  end
end
