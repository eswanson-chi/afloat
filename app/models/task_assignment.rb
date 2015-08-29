class TaskAssignment < ActiveRecord::Base
  validates :group_user_id, :presence => true
  validates :task_id, :presence => true,  :uniqueness => { :scope => :group_user_id }

  belongs_to :group_user
  belongs_to :task
end
