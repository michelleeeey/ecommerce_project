# frozen_string_literal: true

class UserAccount < ApplicationRecord
  validates :username, :password, presence: true
  validates :username, uniqueness: true, length: { in: 3..20 }
end
