class ContactMailer < ActionMailer::Base
  #default from: "info@ri-plus.jp"
  #default to: "info@ri-plus.jp"

  def send_when_admin_reply(contact) #メソッドに対して引数を設定
    @contact = contact
    @message = contact.reply_text #返信内容
    mail to: contact.email, subject: '【株式会社Ri-Plus】 お問い合わせありがとうございます。'
  end

  def received_email(contact)
    @contact = contact
    mail(subject: 'アポ匠よりメッセージが届きました') do |format|
      format.text
    end
  end

end
