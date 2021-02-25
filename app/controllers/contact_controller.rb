class ContactController < ApplicationController
  def index
    @contact = Contact.new
    add_breadcrumb "問い合わせフォーム", contact_path
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    add_breadcrumb "問い合わせフォーム", contact_path
    add_breadcrumb "確認画面"
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    @contact.save
    ContactMailer.received_email(@contact).deliver
    ContactMailer.send_email(@contact).deliver
    add_breadcrumb "問い合わせフォーム", contact_path
    add_breadcrumb "確認画面"
    add_breadcrumb "送信完了"
  end

  private
  def contact_params
    params.require(:contact).permit(
    :company, #会社名
    :name,  #代表者名
    :tel, #電話番号
    :address, #住所
    :email, #メールアドレス
    :subject,
    :message
    )
  end
end
