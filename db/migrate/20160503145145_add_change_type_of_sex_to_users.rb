class AddChangeTypeOfSexToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :sex, :boolean
  	add_column :users, :sex, :string
  end
end
