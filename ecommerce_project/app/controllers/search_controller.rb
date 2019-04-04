# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @search_option = params[:search_option]

    if @query == ''
      @products = []
    else
      case @search_option
      when 'Search All'
        @products = Product.where('product_name LIKE ?', "%#{@query}%")

      when 'Monitor'
        @products = Product.joins(:category).merge(Category.where('name LIKE ?', 'Monitor')).where('product_name LIKE ?', "%#{@query}%")

      when 'Keyboard'
        @products = Product.joins(:category).merge(Category.where('name LIKE ?', 'Keyboard')).where('product_name LIKE ?', "%#{@query}%")

      when 'Mouse'
        @products = Product.joins(:category).merge(Category.where('name LIKE ?', 'Mouse')).where('product_name LIKE ?', "%#{@query}%")

      when 'Printer'
        @products = Product.joins(:category).merge(Category.where('name LIKE ?', 'Printer')).where('product_name LIKE ?', "%#{@query}%")

      when 'Webcam'
        @products = Product.joins(:category).merge(Category.where('name LIKE ?', 'Webcam')).where('product_name LIKE ?', "%#{@query}%")
    end

    end
  end
end
