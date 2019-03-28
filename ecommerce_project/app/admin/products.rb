# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_name, :description, :price, :stock_quantity, :category_id, :image
end
