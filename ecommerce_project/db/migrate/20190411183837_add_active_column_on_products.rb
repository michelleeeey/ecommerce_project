# frozen_string_literal: true

class AddActiveColumnOnProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :active, :boolean
  end
end
