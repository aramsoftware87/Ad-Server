class RemoveNewidToWebsiteplacementss < ActiveRecord::Migration
  def self.up
    remove_column :websiteplacementsses, :websited_id
  end

  def self.down
    add_column :websiteplacementsses, :websited_id, :integer
  end
end
