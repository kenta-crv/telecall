class DocumentsController < ApplicationController
  def uber
    @document = Document.new
  end

  def uber_d
    @document = Document.new(document_params)
    @document.save
    DocumentMailer.received_email(@document).deliver
    DocumentMailer.uber_email(@document).deliver
  end

  def demaekan
    @document = Document.new
  end

  def demaekan_d
    @document = Document.new(document_params)
    @document.save
    DocumentMailer.received_email(@document).deliver
    DocumentMailer.demaekan_email(@document).deliver
  end

  private
  def document_params
    params.require(:document).permit(
    :company, #会社名
    :name,  #代表者名
    :tel, #電話番号
    :email, #メールアドレス
    :address,
    :sebject
    )
  end
end
