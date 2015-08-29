class AddUserIdToMyApp < ActiveRecord::Migration
  def change
    add_column :my_apps, :user_id, :integer
  end
end
