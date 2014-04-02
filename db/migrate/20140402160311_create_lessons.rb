class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :body
      t.integer :order_number
      t.integer :section_id
      t.timestamps
    end
  end
end
