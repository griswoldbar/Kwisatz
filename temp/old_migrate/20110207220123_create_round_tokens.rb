class CreateRoundTokens < ActiveRecord::Migration
  def self.up
    create_table :round_tokens do |t|
      t.integer :round_id
      t.integer :game_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :round_tokens
  end
end
