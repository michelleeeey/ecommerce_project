# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category

  validates :product_name, :description, :price, :stock_quantity, presence: true
  validates :product_name, uniqueness: true

  def self.paging(page)
    page(page).per(5)
  end
end
