class Worker < ApplicationRecord
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
end
