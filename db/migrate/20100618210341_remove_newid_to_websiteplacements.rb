class RemoveNewidToWebsiteplacements < ActiveRecord::Migration
  def self.up
    remove_column :websiteplacements, :placements_id
    remove_column :websiteplacements, :websites_id
  end

  def self.down
    add_column :websiteplacements, :websites_id, :integer
    add_column :websiteplacements, :placements_id, :integer
  end
end
