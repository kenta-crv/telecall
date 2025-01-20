class RecruitMailer < ActionMailer::Base
  default from: "info@tele-match.net"
  #default to: "info@tele-match.net"

  def received_email(recruit)
    @recruit = recruit
    mail to: "info@tele-match.net"
    mail(subject: '株式会社Ri-Plusのテレアポ業務に応募がありました。') do |format|
      format.text
    end
  end

  def send_email(recruit)
    @recruit = recruit
    mail to: recruit.mail
    mail(subject: '株式会社Ri-Plusに求人応募頂きありがとうございます。') do |format|
      format.text
    end
  end

end
