# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    # page = params[:page]
    @products = if params[:category_type]
                  Product.where("category_id = #{params[:category_type]}").page(params[:page]).per(4)
                elsif params[:new]
                  Product.where('created_at > ?', Time.zone.today - 7).order('created_at DESC').page(params[:page]).per(5)
                elsif params[:updated]
                  Product.where('updated_at > ?', Time.zone.today - 7).order('updated_at DESC').page(params[:page]).per(5)
                else
                  Product.order(:product_name).page(params[:page]).per(4)
                end

    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
