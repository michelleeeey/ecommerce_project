# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name postalCode city province_id username address province_attributes: [:province_name]])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name postalCode city province_id username address province_attributes: [:province_name]])
  end

  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
