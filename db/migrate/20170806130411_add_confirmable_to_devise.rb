class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
    add_index :users, :confirmation_token, unique: true

    execute("UPDATE users SET confirmed_at = datetime('now', 'localtime');")
  end

  def down
    remove_columns :users, :confirmation_token, :corfirmed_at, :confirmation_sent_at
    remove_columns :users, :unconfirmed_email
  end
end
