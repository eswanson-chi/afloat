class Opsystem < ActiveRecord::Base
  validates :version_name, :presence => true, :uniqueness => true

  has_many :my_devices
end
