class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :price
      t.date :due_date
      t.belongs_to :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
