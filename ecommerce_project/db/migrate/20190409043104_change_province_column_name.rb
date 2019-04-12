# frozen_string_literal: true

class ChangeProvinceColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :provinces, :name, :province_name
  end
end
