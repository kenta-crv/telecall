class Outsourcing < ApplicationRecord
  validates :first_name, {presence: true}
  validates :last_name, {presence: true}
  validates :tel, {presence: true}
  validates :mail, {presence: true}
  validates :postnumber, {presence: true}
  validates :address, {presence: true}
  validates :age, {presence: true}

  validates :other_1, {presence: true}
  validates :other_2, {presence: true}
  validates :other_3, {presence: true}
end
