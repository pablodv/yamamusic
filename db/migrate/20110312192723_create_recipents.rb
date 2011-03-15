class CreateRecipents < ActiveRecord::Migration
  def self.up
    create_table :recipents do |t|
      t.integer  :user_id
      t.integer  :message_id
      t.boolean  :read, :default => false
      t.datetime :read_at

      t.timestamps
    end
  end

  def self.down
    drop_table :recipents
  end
end
