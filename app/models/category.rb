class Category < ActiveRecord::Base

  has_many :activity_categories
end
