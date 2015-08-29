class Category < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :activity_categories
end
