# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @search_option = params[:search_option]

    if @query == ''
      @search_query = []
    else
      case @search_option
      when 'Search All'
        @search_query = Product.where('product_name LIKE ?', "%#{@query}%")

      when 'Monitor'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Monitor')).where('product_name LIKE ?', "%#{@query}%")

      when 'Keyboard'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Keyboard')).where('product_name LIKE ?', "%#{@query}%")

      when 'Mouse'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Mouse')).where('product_name LIKE ?', "%#{@query}%")

      when 'Printer'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Printer')).where('product_name LIKE ?', "%#{@query}%")

      when 'Webcam'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Webcam')).where('product_name LIKE ?', "%#{@query}%")
    end

    end
  end
end
