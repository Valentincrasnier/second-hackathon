class AddInfoUsers < ActiveRecord::Migration
  def change
    add_column :users, :pseudo, :string
    add_column :users, :sex, :boolean
    add_column :users, :birthday, :datetime
  end
end
