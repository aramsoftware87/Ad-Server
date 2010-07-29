class CreateWebsiteplacements < ActiveRecord::Migration
  def self.up
    create_table :websiteplacements do |t|
      t.integer :id
      t.integer :placement_id
      t.integer :website_id
      t.integer :rotation
      t.text :embededcode
      t.string :status
      t.integer :view
      t.integer :click

      t.timestamps
    end
  end

  def self.down
    drop_table :websiteplacements
  end
end
