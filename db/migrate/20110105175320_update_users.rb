class UpdateUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :admin, :int
  end

  def self.down
    remove_column :users, :admin
  end

end