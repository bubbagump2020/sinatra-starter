class CreateLists < ActiveRecord::Migration[5.2]
	def change
		create_table :lists do |table|
			table.belongs_to :user
			table.string :item_name
			table.integer :item_quantity
		end
	end
end