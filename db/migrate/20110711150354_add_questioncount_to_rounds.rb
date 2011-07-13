class AddQuestioncountToRounds < ActiveRecord::Migration
  def self.up
    add_column :rounds, :questions_per_category, :integer
  end

  def self.down
    remove_column :rounds, :questions_per_category
  end
end
