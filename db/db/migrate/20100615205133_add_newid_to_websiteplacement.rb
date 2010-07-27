class AddNewidToWebsiteplacement < ActiveRecord::Migration
  def self.up
    add_column :websiteplacements, :placement_id, :integer
    add_column :websiteplacements, :websited_id, :integer
  end

  def self.down
    remove_column :websiteplacements, :websited_id
    remove_column :websiteplacements, :placement_id
  end
end
