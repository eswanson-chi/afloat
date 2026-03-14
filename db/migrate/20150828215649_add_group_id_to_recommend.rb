class AddGroupIdToRecommend < ActiveRecord::Migration[4.2]
  def change
    add_column :recommends, :group_id, :integer
  end
end
