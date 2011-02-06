class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :type
      t.string :genre
      t.string :text
      t.integer :creator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
