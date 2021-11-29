class EstimateMailer < ActionMailer::Base
  default from: "cost@ri-plus.jp"

  def received_email(estimate)
    @estimate = estimate
    mail to: "cost@ri-plus.jp"
    mail(subject: '社会保険適正化機構より見積もり依頼がありました') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.mail
    mail(subject: 'お見積もり依頼を頂きありがとうございます｜社会保険適正化機構') do |format|
      format.text
    end
  end

end
