class WorkerMailer < ActionMailer::Base
  default from: "info@tele-match.net"

  def received_email(worker)
    @worker = worker
    mail to: "info@tele-match.net"
    mail(subject: '株式会社Ri-Plusに求人申込がありました') do |format|
      format.text
    end
  end

  def send_email(worker)
    @worker = worker
    mail to: worker.mail
    mail(subject: '【重要】株式会社Ri-Plusにご応募頂きありがとうございます') do |format|
      format.text
    end
  end
end
