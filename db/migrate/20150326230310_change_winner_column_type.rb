class ChangeWinnerColumnType < ActiveRecord::Migration
  def change
    change_column :games, :winner, :integer
  end
end
