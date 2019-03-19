# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :user_account
  belongs_to :province

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.freeze

  validates :first_name, :last_name, :address, :city, :postal_code, :country, :email, presence: true
  validates :email, uniqueness: true, format: EMAIL_REGEX
end
