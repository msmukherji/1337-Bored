class AddTimestamp < ActiveRecord::Migration
  def change
    add_column :games, :date, :datetime
  end
end
