# frozen_string_literal: true

class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :gst_rate
      t.decimal :pst_rate

      t.timestamps
    end
  end
end
