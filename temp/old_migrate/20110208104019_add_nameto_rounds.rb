class AddNametoRounds < ActiveRecord::Migration
  def self.up
    add_column :rounds, :name, :string
  end

  def self.down
    remove_column :rounds, :name
  end
end
