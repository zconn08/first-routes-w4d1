class GroupMembership < ActiveRecord::Base
  validates :user_id, :contact_id, :group_id, presence: true

  belongs_to :users

  belongs_to :contact

  belongs_to :group
end
