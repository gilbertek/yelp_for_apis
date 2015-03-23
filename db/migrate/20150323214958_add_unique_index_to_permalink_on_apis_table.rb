class AddUniqueIndexToPermalinkOnApisTable < ActiveRecord::Migration
  def change
    add_index :apis, :permalink, :unique => true
  end
end
