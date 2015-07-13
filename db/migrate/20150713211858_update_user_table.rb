class UpdateUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    rename_column :users, :email, :username

    change_column :users, :username, :string, null: false, unique: true
    add_index :users, :username
  end
end
