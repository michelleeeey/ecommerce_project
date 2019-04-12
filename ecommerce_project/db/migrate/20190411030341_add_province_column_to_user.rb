# frozen_string_literal: true

class AddProvinceColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :province, :string
    add_reference :users, :province, foreign_key: true
  end
end
