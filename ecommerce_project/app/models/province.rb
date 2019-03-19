# frozen_string_literal: true

class Province < ApplicationRecord
  validates :name, :gst_rate, :pst_rate, presence: true
  validates :name, uniqueness: true
end
