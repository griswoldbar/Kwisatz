class CreateQuestionTokens < ActiveRecord::Migration
  def self.up
    create_table :question_tokens do |t|
      t.integer :question_id
      t.integer :round_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :question_tokens
  end
end
