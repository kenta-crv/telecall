class TopMailer < ActionMailer::Base
  default from: "mail@ri-plus.jp"
  #default to: "mail@ri-plus.jp"

  def received_email(top)
    @top = top
    mail to: "mail@ri-plus.jp"
    mail(subject: 'アポ匠資料がダウンロードされました。') do |format|
      format.text
    end
  end

  def send_email(top)
    @top = top
    mail to: top.email
    mail(subject: 'アポ匠資料をダウンロード頂きありがとうございました。') do |format|
      format.text
    end
  end

end
