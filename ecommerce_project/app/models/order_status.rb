# frozen_string_literal: true

class OrderStatus < ActiveRecord::Base
  has_many :orders
  end
