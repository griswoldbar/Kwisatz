class CreateRoundQuestions < ActiveRecord::Migration
  def self.up
    create_table :round_questions do |t|
      t.integer :round_id
      t.integer :question_id

      t.timestamps
    end
  end

  def self.down
    drop_table :round_questions
  end
end
