class CreateCategoryrounds < ActiveRecord::Migration
  def self.up
    create_table :categoryrounds do |t|
      t.integer :round_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categoryrounds
  end
end
