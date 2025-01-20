class TopMailer < ActionMailer::Base
  default from: "info@tele-match.net"
  #default to: "info@tele-match.net"

  def received_email(top)
    @top = top
    mail to: "info@tele-match.net"
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
