class Task < ActiveRecord::Base
  validates :project_group_id, :presence => true
  validates :activity_id, :presence => true

  belongs_to :app
  belongs_to :project_group
  belongs_to :activity
  belongs_to :action
  has_many :events
  has_many :task_assignments
end
