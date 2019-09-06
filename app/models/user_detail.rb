class UserDetail < ApplicationRecord
  has_many :items
  has_many :item_images
end
