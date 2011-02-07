class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds do |t|
      t.string  :type
      t.integer :creator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rounds
  end
end
