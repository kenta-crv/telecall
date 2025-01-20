class DocumentMailer < ActionMailer::Base
  default from: "info@tele-match.net"
  def received_email(document)
    @document = document
    mail to: "info@tele-match.net"
    mail(subject: '資料ダウンロードがありました') do |format|
      format.text
    end
  end

  def demaekan_email(document)
    @document = document
    mail to: document.email
    mail(subject: '『出前館』資料ダウンロード頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

  def uber_email(document)
    @document = document
    mail to: document.email
    mail(subject: '『Uber eats』資料ダウンロード頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end
end
