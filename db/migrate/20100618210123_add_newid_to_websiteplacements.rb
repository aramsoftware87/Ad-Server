class AddNewidToWebsiteplacements < ActiveRecord::Migration
  def self.up
    add_column :websiteplacements, :placements_id, :integer
    add_column :websiteplacements, :websites_id, :integer
  end

  def self.down
    remove_column :websiteplacements, :websites_id
    remove_column :websiteplacements, :placements_id
  end
end
