# frozen_string_literal: true

class AddUserReferenceToProvince < ActiveRecord::Migration[5.2]
  def change
    add_reference :provinces, :user, foreign_key: true
  end
end
