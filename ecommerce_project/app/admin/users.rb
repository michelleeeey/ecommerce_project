# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :first_name, :last_name, :address, :city, :postalCode, :username, :email, :password, :province_id
end
