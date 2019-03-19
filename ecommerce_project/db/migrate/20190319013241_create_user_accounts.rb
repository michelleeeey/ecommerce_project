class CreateUserAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_accounts do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
