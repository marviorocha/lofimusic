class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string, null: false
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :role, :string
  end
end
