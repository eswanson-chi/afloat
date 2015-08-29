class App < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :itune_id, :presence => true, :uniqueness => true

  has_many :my_apps
  has_many :tasks
  has_many :recommends, :through => :my_apps
end
