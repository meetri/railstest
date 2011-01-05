class UpdateBadges < ActiveRecord::Migration

  def self.up
    remove_column :badges, :image
    add_column :badges, :image_uid, :string    
  end

  def self.down
    remove_column :badges, :cover_image_uid    
  end

end