class RemoveUseridFromPlacements < ActiveRecord::Migration
  def self.up
    remove_column :placements, :user_id
  end

  def self.down
    add_column :placements, :user_id, :integer
  end
end
