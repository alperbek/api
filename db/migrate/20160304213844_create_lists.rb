class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :slug
      t.integer :mode

      t.timestamps null: false
    end
    add_index :lists, :slug, unique: true
  end
end
