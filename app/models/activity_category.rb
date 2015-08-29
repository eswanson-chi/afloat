class ActivityCategory < ActiveRecord::Base
  validates :category_id, :presence => true
  validates :activity_id, :presence => true, :uniqueness => { :scope => :category_id }

  belongs_to :category
  belongs_to :activity
end
