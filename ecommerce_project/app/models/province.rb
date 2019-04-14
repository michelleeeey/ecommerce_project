# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :users

  # validates :province_name, :gst_rate, :pst_rate, presence: true
  # validates :province_name, uniqueness: true

  def to_s
    province_name
  end
end
