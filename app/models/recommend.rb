class Recommend < ActiveRecord::Base
  validates :my_app_id, :presence => true
  validates :activity_id, :presence => true, :uniqueness => { :scope => [:user_id,:my_app_id, :action_id] }
  validates :action_id, :uniqueness => { :allow_blank => true, :scope => [:user_id,:my_app_id, :activity_id ]}

  belongs_to :my_app
  belongs_to :activity
  belongs_to :action
end
