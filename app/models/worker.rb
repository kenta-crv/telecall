class Worker < ApplicationRecord
  validates :first_name, {presence: true} #苗字
  validates :last_name, {presence: true} #名前
  validates :first_kana, {presence: true} #ミョウジ
  validates :last_kana, {presence: true} #ナマエ
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :postnumber, {presence: true} #郵便番号
  validates :address, {presence: true} #住所
  validates :experience, {presence: true} #経験
  validates :item, {presence: true} #商材名
  validates :ago, {presence: true} #経験年数
  validates :worktime, {presence: true} #週稼働時間
  validates :other_1, {presence: true}
  validates :other_2, {presence: true}
  validates :other_3, {presence: true}
  validates :other_4, {presence: true}
  validates :other_5, {presence: true}
end
