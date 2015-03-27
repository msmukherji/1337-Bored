class AddTimestamps < ActiveRecord::Migration
  def change
    add_timestamps :games
    remove_column :games, :created_at
  end
end
