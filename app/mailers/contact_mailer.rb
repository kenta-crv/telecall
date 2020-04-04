class ContactMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  #default to: @contact.email

  #def send_when_admin_reply(contact) #メソッドに対して引数を設定
  #  @contact = contact
  #  mail to: contact.email,
  #           subject: '【株式会社Ri-Plus】 お問い合わせありがとうございます。'
  #end

  def received_email(contact)
    @contact = contact
    mail to: "info@ri-plus.jp"
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
