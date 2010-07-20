class RemoveOldidFromWebsiteplacement < ActiveRecord::Migration
  def self.up
    remove_column :websiteplacements, :placementid
    remove_column :websiteplacements, :websited
  end

  def self.down
    add_column :websiteplacements, :websited, :integer
    add_column :websiteplacements, :placementid, :integer
  end
end
