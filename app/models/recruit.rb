class Recruit < ApplicationRecord
  has_many :prefectures
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :postnumber, {presence: true} #郵便番号
  validates :address, {presence: true} #住所
  validates :select_1, {presence: true} #
  validates :select_3, {presence: true} #
  validates :remarks, {presence: true} #
  validates :other_1, {presence: true}
  validates :other_2, {presence: true}
  validates :one_first_date, {presence: true}
  validates :one_end_date, {presence: true}
  validates :second_first_date, {presence: true}
  validates :second_end_date, {presence: true}
  validates :third_first_date, {presence: true}
  validates :third_end_date, {presence: true}
end
