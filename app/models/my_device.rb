class MyDevice < ActiveRecord::Base
  validates :nickname, :presence => true, :uniqueness => { :scope => :user_id }
  validates :user_id, :presence => true
  validates :device_id, :presence => true
  validates :opsystem_id, :presence => true

  belongs_to :user
  belongs_to :device
  belongs_to :opsystem

  has_many :my_apps

end
