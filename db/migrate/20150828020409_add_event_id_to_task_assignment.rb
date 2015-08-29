class AddEventIdToTaskAssignment < ActiveRecord::Migration
  def change
    add_column :task_assignments, :event_id, :integer
  end
end
