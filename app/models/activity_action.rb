class ActivityAction < ActiveRecord::Base
  validates :activity_id, :presence => true
  validates :action_id, :presence => true, :uniqueness => { :scope => :activity_id }

  belongs_to :action
  belongs_to :activity
end
