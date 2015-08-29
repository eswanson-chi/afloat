class Event < ActiveRecord::Base
  validates :group_user_id, :presence => true
  validates :project_group_id, :presence => true

  belongs_to :my_app
  belongs_to :task
  belongs_to :group_user
  belongs_to :project_group
  belongs_to :activity
  belongs_to :action
end
