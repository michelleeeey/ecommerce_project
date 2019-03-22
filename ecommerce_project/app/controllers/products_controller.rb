# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    page = params[:page]

    @products = if params[:category_type]
                  Product.where("category_id = #{params[:category_type]}")
                else
                  Product.order(:name)
                end
  end

  def show
    @product = Product.find(params[:id])
  end
end
