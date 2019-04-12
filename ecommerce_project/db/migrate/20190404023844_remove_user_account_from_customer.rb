# frozen_string_literal: true

class RemoveUserAccountFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_reference :customers, :user_account, index: true, foreign_key: true
    remove_reference :customers, :user_id, index: true, foreign_key: true
    add_reference :customers, :user, index: true, foreign_key: true
  end
end
