class RemoveIdFromWebsiteplacements < ActiveRecord::Migration
  def self.up
    remove_column :websiteplacements, :websited_id
  end

  def self.down
    add_column :websiteplacements, :websited_id, :integer
  end
end
