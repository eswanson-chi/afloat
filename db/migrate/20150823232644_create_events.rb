class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :task_id
      t.integer :my_app_id
      t.integer :group_user_id
      t.integer :project_group_id

      t.timestamps

    end
  end
end
