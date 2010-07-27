class AddUseridToPlacements < ActiveRecord::Migration
  def self.up
    add_column :placements, :user_id, :integer
  end

  def self.down
    remove_column :placements, :user_id
  end
end
