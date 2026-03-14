class AddEventIdToTaskAssignment < ActiveRecord::Migration[4.2]
  def change
    add_column :task_assignments, :event_id, :integer
  end
end
