class MyApp < ActiveRecord::Base
  validates :my_device_id, :presence => true
  validates :user_id, :presence => true
  validates :app_id, :presence => true, :uniqueness => { :scope => :my_device_id }

  belongs_to :my_device
  belongs_to :app
end
