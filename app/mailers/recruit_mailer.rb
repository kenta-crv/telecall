class RecruitMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  #default to: "info@ri-plus.jp"

  def received_email(recruit)
    @recruit = recruit
    mail to: "info@ri-plus.jp"
    mail(subject: '株式会社Ri-Plusよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(recruit)
    @recruit = recruit
    mail to: recruit.mail
    mail(subject: '【重要】株式会社Ri-Plusにお問い合わせ頂きありがとうございます') do |format|
      format.text
    end
  end

end
