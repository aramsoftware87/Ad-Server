class CreatePlacements < ActiveRecord::Migration
  def self.up
    create_table :placements do |t|
      t.integer :id
      t.string :name
      t.string :image
      t.string :url
      t.string :archive
      t.string :advertiser

      t.timestamps
    end
  end

  def self.down
    drop_table :placements
  end
end
