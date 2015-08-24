class CreateTaskAssignments < ActiveRecord::Migration
  def change
    create_table :task_assignments do |t|
      t.integer :task_id
      t.integer :group_user_id
      t.boolean :can_delegate

      t.timestamps

    end
  end
end
