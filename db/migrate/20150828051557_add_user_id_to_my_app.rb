class AddUserIdToMyApp < ActiveRecord::Migration[4.2]
  def change
    add_column :my_apps, :user_id, :integer
  end
end
