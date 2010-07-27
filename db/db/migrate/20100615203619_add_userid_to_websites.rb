class AddUseridToWebsites < ActiveRecord::Migration
  def self.up
    add_column :websites, :user_id, :integer
  end

  def self.down
    remove_column :websites, :user_id
  end
end
