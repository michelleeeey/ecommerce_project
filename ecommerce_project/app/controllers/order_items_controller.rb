# frozen_string_literal: true

class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    existingorder = @order.order_items.where(product_id: params[:order_item][:product_id])
    if existingorder.count >= 1
      existingorder.last.update_column(:quantity, existingorder.last.quantity + params[:order_item][:quantity].to_i)
      redirect_back(fallback_location: '#')
    else
      @order.save
      redirect_back(fallback_location: '#')
    end
    session[:order_id] = @order.id
    end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
