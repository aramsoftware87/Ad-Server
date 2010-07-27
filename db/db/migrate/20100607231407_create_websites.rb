class CreateWebsites < ActiveRecord::Migration
  def self.up
    create_table :websites do |t|
      t.integer :id
      t.string :name
      t.string :url
      t.string :archive
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :websites
  end
end
