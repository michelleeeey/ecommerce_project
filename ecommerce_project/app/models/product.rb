# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  validates :product_name, :description, :price, :stock_quantity, presence: true
  validates :product_name, uniqueness: true

  mount_uploader :image, ImageUploader

  def self.categorize(type)
    where('category_id LIKE ?', type)
  end

  default_scope { where(active: true) }
end
