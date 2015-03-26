class Games < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_type, null: false
      t.text :players
      t.string :winner
      t.text :loser
    end
  end
end
