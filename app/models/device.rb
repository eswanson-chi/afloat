class Device < ActiveRecord::Base
  validates :model_number, :presence => true, :uniqueness => true
  validates :internal_name, :presence => true
  validates :identifier, :presence => true
  validates :name, :presence => true

  has_many :my_devices
  has_many :my_apps, :through => :my_devices
  belongs_to :manufacturers
end
