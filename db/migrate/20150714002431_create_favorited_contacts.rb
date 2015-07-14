class CreateFavoritedContacts < ActiveRecord::Migration
  def change
    create_table :favorited_contacts do |t|
      t.integer :user_id, null: false
      t.integer :contact_id, null: false

      t.timestamps null: false
    end

    add_index :favorited_contacts, :user_id
    add_index :favorited_contacts, :contact_id
  end
end
