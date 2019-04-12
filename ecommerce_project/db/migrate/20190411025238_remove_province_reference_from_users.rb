# frozen_string_literal: true

class RemoveProvinceReferenceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :Province_id, index: true, foreign_key: true
  end
end
