class Worker < ApplicationRecord
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :postnumber, {presence: true} #郵便番号
  validates :address, {presence: true} #住所
  validates :bank, {presence: true}
  validates :store, {presence: true}
  validates :account_number, {presence: true}
  validates :transfer_name, {presence: true}
end
