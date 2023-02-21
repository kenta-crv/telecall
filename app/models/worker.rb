class Worker < ApplicationRecord
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :postnumber, {presence: true} #郵便番号
  validates :address, {presence: true} #住所
  validates :emergency_tel, {presence: true} #緊急連絡先
  validates :emergency_name, {presence: true} #お名前
  validates :emergency_pattern, {presence: true} #続柄
end
