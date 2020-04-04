class RecruitsController < ApplicationController
  layout "app"
  def index
    @recruit = Recruit.new
    render :action => 'index'
  end

  def confirm
    @recruit = Recruit.new(recruit_params)
    if @recruit.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @recruit = Recruit.new(recruit_params)
    RecruitMailer.received_email(@recruit).deliver
    RecruitMailer.send_email(@recruit).deliver
  end

  private
  def recruit_params
    params.require(:recruit).permit(
      :name,
      :mobile,
      :email,
      :age,
      :station,
      :choice,
      :remarks
    )
  end
end
