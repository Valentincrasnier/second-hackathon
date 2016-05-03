class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :description
      t.references :author
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
