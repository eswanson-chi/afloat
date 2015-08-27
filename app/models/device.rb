class Device < ActiveRecord::Base
  validates :model_number, :presence => true

  has_many :my_devices
  has_many :my_apps, :through => :my_devices
  belongs_to :manufacturers
end
