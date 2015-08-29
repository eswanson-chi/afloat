class Project < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :name, :presence => true, :uniqueness => { :scope => :user_id }

  belongs_to :user
  has_many :project_groups
end
