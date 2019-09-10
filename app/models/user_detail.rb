class UserDetail < ApplicationRecord
  belongs_to :user
  has_one :point
end
