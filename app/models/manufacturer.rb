class Manufacturer < ActiveRecord::Base

  has_many :devices
  has_many :my_devices, :through => :devices
end
