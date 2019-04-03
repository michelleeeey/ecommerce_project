# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    page = params[:page]
    @products = if params[:category_type]
                  Product.where("category_id = #{params[:category_type]}").paging(page)
                elsif params[:new]
                  Product.where('created_at > ?', Time.zone.today - 7).order('created_at DESC').paging(page)
                elsif params[:updated]
                  Product.where('updated_at > ?', Time.zone.today - 7).order('updated_at DESC').paging(page)
                else
                  Product.order(:product_name).paging(page)
                end
  end

  def show
    @product = Product.find(params[:id])
  end
end
