class OutsourcingMailer < ActionMailer::Base
  default from: "mail@ri-plus.jp"
  #default to: "mail@ri-plus.jp"

  def received_email(outsourcing)
    @outsourcing = outsourcing
    mail to: "mail@ri-plus.jp"
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
