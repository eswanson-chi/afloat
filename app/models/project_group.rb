class ProjectGroup < ActiveRecord::Base
  validates :project_id, :presence => true
  validates :group_id, :presence => true, :uniqueness => { :scope => :project_id }

  belongs_to :project
  belongs_to :user
  has_many :tasks
  has_many :events
end
