class AddDiscriptionColumnToItems < ActiveRecord::Migration
  def change
	  add_column :items, :description, :string
  end
  add_index :items, :price
  add_index :items, :name
end
