class UsersMessages < ActiveRecord::Migration
  def self.up
  	create_table 'messages_users', :id => false do |t|
      t.column :user_id, :integer
      t.column :message_id, :integer
      t.column :read, :boolean
    end
  end

  def self.down
  	drop_table 'messages_users'
  end
end
