class MyApp < ActiveRecord::Base

  belongs_to :my_device
  belongs_to :app
end
