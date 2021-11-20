class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string, null: false
    add_column :users, :username, :string, null: false
    add_column :users, :role, :string, null: false
  end
end
