class AddCategoryIdToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :category_id, :integer
  end

  def self.down
    remove_column :questions, :category_id
  end
end
