class OutsourcingsController < ApplicationController
  def index
    @outsourcing = Outsourcing.new
    render :action => 'index'
  end

  def confirm
    @outsourcing = Outsourcing.new(outsourcings_params)
    #@outsourcings.subsidy = params[:outsourcings][:subsidy]
    if @outsourcing.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
    # binding.pry
  end

  def thanks
    @outsourcing = Outsourcing.new(outsourcings_params)
    OutsourcingMailer.received_email(@outsourcing).deliver
    OutsourcingMailer.send_email(@outsourcing).deliver
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
      )
  end
end
