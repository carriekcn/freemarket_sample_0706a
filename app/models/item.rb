class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many   :item_images, dependent: :destroy

  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :name,                       presence: true, length: {maximum: 40}
  validates :description,                presence: true, length: {maximum: 1000}
  validates :category_id,                numericality: {message: 'Please select'}
  validates :state,                      exclusion: {in: %w(---), message: 'Please select'}
  validates :shipping_charges,           exclusion: {in: %w(---), message: 'Please select'}
  validates :shipping_method,            exclusion: {in: %w(---), message: 'Please select'}
  validates :shipping_source_area,       exclusion: {in: %w(---), message: 'Please select'}
  validates :days_ship,                  exclusion: {in: %w(---), message: 'Please select'}
  validates :price,                      presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
