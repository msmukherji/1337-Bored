class PlayerGames < ActiveRecord::Migration
  def change
    create_table :player_games do |t|
      t.integer :user_id, null: false
      t.integer :game_id, null: false
      t.integer :score, default: 0
    end
  end
end
