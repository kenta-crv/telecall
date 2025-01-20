class ContactMailer < ActionMailer::Base
  default from: "info@tele-match.net"
  def received_email(contact)
    @contact = contact
    mail to: "info@tele-match.net"
    mail(subject: '株式会社Ri-Plusよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'アポ匠にお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

end
