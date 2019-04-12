# frozen_string_literal: true

class RemoveProvinceColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :province, :string
    remove_reference :users, :province, index: true, foreign_key: true
  end
end
