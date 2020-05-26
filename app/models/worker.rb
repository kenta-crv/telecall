class Worker < ApplicationRecord
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :postnumber, {presence: true} #郵便番号
  validates :address, {presence: true} #住所
  validates :week, {presence: true} #住所
  validates :experience, {presence: true} #住所
  validates :other_1, {presence: true}
  validates :other_2, {presence: true}
  validates :other_3, {presence: true}
  validates :other_4, {presence: true} #住所
end
