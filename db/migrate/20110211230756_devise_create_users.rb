class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :username
      t.string    :cached_slug

      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable

      t.timestamps
    end

    add_index :users, :username,             :unique => true
    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
    add_index :users, :cached_slug,          :unique => true
  end

  def self.down
    drop_table :users
  end
end
