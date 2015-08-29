class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :email, :presence => true, :uniqueness => true

  has_many :groups, :foreign_key => "owner_user_id"
  has_many :my_devices
  has_many :projects#, :class_name => “Project”, :foreign_key => “owner_user_id”

  has_many :group_users, :through => :groups
  has_many :task_assignments, :through => :group_users
  has_many :project_groups, :through => :projects
  has_many :tasks, :through => :project_groups
  has_many :events, :through => [:project_groups, :tasks]
end
