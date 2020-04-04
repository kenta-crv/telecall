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
    mail to: recruit.email
    mail(subject: 'アポ匠にお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

end
