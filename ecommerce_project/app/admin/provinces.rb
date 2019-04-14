# frozen_string_literal: true

ActiveAdmin.register Province do
  permit_params :province_name, :gst_rate, :pst_rate
end
