# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :description, :price, :stock_quantity, :category_id, :image
end
