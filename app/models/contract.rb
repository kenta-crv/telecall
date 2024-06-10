class Contract < ApplicationRecord
    has_one :script, dependent: :destroy
    has_many :comments, dependent: :destroy
end
