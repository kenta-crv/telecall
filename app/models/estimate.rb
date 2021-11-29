class Estimate < ApplicationRecord
  validates :company, {presence: true} #会社名
  validates :name, {presence: true} #担当者名
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :address, {presence: true} #住所
  validates :url, {presence: true} #URL
  validates :business, {presence: true} #アポ希望ビジネス
end
