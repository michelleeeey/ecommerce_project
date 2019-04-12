# frozen_string_literal: true

class RemoveReferenceFromUserAccount < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :client, index: true
  end
end
