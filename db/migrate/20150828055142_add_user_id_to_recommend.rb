class AddUserIdToRecommend < ActiveRecord::Migration[4.2]
  def change
    add_column :recommends, :user_id, :integer
  end
end
