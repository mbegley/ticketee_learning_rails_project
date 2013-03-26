class AddConfirmableFieldsToUsers < ActiveRecord::Migration
  def change
    add column :users, :confirmation_token, :string
    add column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
  end
end
