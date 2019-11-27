class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :size
  belongs_to :item_status
  belongs_to :sale_status
  belongs_to :delivery_status
  belongs_to :category
  belongs_to :delivery_method
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
