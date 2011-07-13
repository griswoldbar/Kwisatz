class CreateRoundquestions < ActiveRecord::Migration
  def self.up
    create_table :roundquestions do |t|
      t.integer :round_id
      t.integer :question_id

      t.timestamps
    end
  end

  def self.down
    drop_table :roundquestions
  end
end
