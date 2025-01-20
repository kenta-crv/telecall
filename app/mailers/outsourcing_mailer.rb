class OutsourcingMailer < ActionMailer::Base
  default from: "info@tele-match.net"
  #default to: "info@tele-match.net"

  def received_email(outsourcing)
    @outsourcing = outsourcing
    mail to: "info@tele-match.net"
    mail(subject: '株式会社Ri-Plusの業務委託事務の応募がありました') do |format|
      format.text
    end
  end

  def send_email(outsourcing)
    @outsourcing = outsourcing
    mail to: outsourcing.mail
    mail(subject: '株式会社Ri-Plusに求人応募頂きありがとうございます。') do |format|
      format.text
    end
  end

end
