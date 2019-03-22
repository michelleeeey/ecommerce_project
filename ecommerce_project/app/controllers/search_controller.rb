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
        @search_query = Product.where('name LIKE ?', "%#{@query}%")

      when 'Monitors'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Monitors')).where('name LIKE ?', "%#{@query}%")

      when 'Keyboard'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Keyboard')).where('name LIKE ?', "%#{@query}%")

      when 'Mouse'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Mouse')).where('name LIKE ?', "%#{@query}%")

      when 'Printer'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Printer')).where('name LIKE ?', "%#{@query}%")

      when 'Webcam'
        @search_query = Product.joins(:category).merge(Category.where('name LIKE ?', 'Webcam')).where('name LIKE ?', "%#{@query}%")
    end

    end
  end
end
