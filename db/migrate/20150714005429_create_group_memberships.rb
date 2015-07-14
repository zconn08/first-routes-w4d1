class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.integer :contact_id, null: false

      t.timestamps null: false
    end
  end
end
