class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :email
      t.string :password
      t.string :utype
      t.string :archive
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
