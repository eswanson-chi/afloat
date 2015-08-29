class Activity < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :activity_categories
  has_many :activity_actions
  has_many :recommends
  has_many :tasks
  has_many :events
end
