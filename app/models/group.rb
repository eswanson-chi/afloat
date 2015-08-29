class Group < ActiveRecord::Base
  validates :owner_user_id, :presence => true
  validates :name, :presence => true, :uniqueness => { :scope => :owner_user_id }

  belongs_to :user
  has_many :group_users
  has_many :task_assignments, :through => :group_users
  has_many :tasks, :through => :project_groups
  has_many :events, :through => [:project_groups, :tasks]
end
