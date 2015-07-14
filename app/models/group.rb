class Group < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :group_memberships

  has_many :members, through: :group_memberships, source: :user

  has_many :contacts, through: :group_memberships, source: :contact
end
