class ContractMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  def received_email(contract)
    @contract = contract
    mail from: contract.email
    mail to: "info@ri-plus.jp"
    mail(subject: '株式会社Ri-Plusにお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contract)
    @contract = contract
    mail to: contract.email
    mail(subject: 'アポ匠にお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

  def contract_received_email(contract)
    @contract = contract
    mail to: "info@ri-plus.jp"
    mail(subject: '株式会社Ri-Plusで契約同意がありました') do |format|
      format.text
    end
  end

  def contract_send_email(contract)
    @contract = contract
    mail to: contract.email
    mail(subject: '『アポ匠』をご契約いただきありがとうございます。') do |format|
      format.text
    end
  end
end
