class DropFavoritedColumns < ActiveRecord::Migration
  def change
    remove_column :contacts, :favorited
    remove_column :contact_shares, :favorited
  end
end
