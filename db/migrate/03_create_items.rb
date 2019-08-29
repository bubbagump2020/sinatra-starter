# May not need this table
class CreateItems < ActiveRecord::Migration[5.2]
	def change
		create_table :items do |table|
			table.string :name
			table.belongs_to :user
			table.belongs_to :list
		end
	end
end