# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category

  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, uniqueness: true
end
