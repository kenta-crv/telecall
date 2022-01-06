class Top < ApplicationRecord
  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :service, {presence: true}
end
