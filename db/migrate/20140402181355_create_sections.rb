class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :order_number
      t.integer :chapter_id
      t.timestamps
    end
  end
end
