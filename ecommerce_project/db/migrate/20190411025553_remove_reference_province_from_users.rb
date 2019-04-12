# frozen_string_literal: true

class RemoveReferenceProvinceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :Province, index: true, foreign_key: true
  end
end
