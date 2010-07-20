class RemoveEmbededcodeFromWebsiteplacements < ActiveRecord::Migration
  def self.up
    remove_column :websiteplacements, :embededcode
  end

  def self.down
    add_column :websiteplacements, :embededcode
  end
end
