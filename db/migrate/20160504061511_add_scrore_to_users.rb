class AddScroreToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :scrore, :integer
  end
end
