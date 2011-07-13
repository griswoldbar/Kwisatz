class AddCategorycountToRounds < ActiveRecord::Migration
  def self.up
    add_column :rounds, :category_count, :integer
  end

  def self.down
    remove_column :rounds, :category_count
  end
end
