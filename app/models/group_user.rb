class GroupUser < ActiveRecord::Base
  validates :group_id, :presence => true
  validates :user_id, :presence => true, :uniqueness => { :scope => :group_id }

  belongs_to :group
  belongs_to :user
end
