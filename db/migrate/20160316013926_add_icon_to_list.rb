class AddIconToList < ActiveRecord::Migration
  def change
    add_column :lists, :icon, :string
  end
end
