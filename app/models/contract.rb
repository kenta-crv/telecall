class Contract < ApplicationRecord
 has_one :script
 has_many :comments
end
