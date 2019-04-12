# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :province

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, :first_name, :last_name, :email, presence: true
  # validates :username, :email, :password, presence: true
end
