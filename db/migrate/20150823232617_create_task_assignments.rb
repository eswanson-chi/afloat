class CreateTaskAssignments < ActiveRecord::Migration[4.2]
  def change
    create_table :task_assignments do |t|
      t.integer :task_id
      t.integer :group_user_id
      t.boolean :can_delegate

      t.timestamps

    end
  end
end
