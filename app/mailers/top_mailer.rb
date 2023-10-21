class TopMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  #default to: "info@ri-plus.jp"

  def received_email(top)
    @top = top
    mail to: "info@ri-plus.jp"
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
