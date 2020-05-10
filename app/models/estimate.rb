class Estimate < ApplicationRecord
  mount_uploader :document_1, ImagesUploader
  mount_uploader :document_2, ImagesUploader
  mount_uploader :document_3, ImagesUploader

  validates :company, {presence: true} #会社名
  validates :name, {presence: true} #担当者名
  validates :tel, {presence: true} #電話番号
  validates :mail, {presence: true} #メールアドレス
  validates :address, {presence: true} #住所
  validates :url, {presence: true} #URL

  validates :business, {presence: true} #アポ希望ビジネス
  validates :number, {presence: true} #月間獲得件数
  validates :start, {presence: true} #開始時期
  validates :document_1, {presence: true} #資料１
end
