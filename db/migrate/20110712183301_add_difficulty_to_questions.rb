class AddDifficultyToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :difficulty, :integer
  end

  def self.down
    remove_column :questions, :difficulty
  end
end
