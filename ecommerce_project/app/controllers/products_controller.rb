# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    page = params[:page]
    @products = if params[:category_type]
                  Product.where("category_id = #{params[:category_type]}").paging(page)
                else
                  Product.order(:name).paging(page)
                end
  end

  def show
    @product = Product.find(params[:id])
  end
end
