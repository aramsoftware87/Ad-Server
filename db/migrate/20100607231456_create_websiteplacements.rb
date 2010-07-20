class CreateWebsiteplacements < ActiveRecord::Migration
  def self.up
    create_table :websiteplacements do |t|
      t.integer :id
      t.integer :placementid
      t.integer :website
      t.integer :rotation
      t.text :embededcode
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :websiteplacements
  end
end
