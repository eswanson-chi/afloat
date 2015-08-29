class AddGroupIdToRecommend < ActiveRecord::Migration
  def change
    add_column :recommends, :group_id, :integer
  end
end
