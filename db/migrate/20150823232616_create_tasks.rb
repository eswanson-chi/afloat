class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :app_id
      t.boolean :app_required
      t.integer :project_group_id
      t.integer :activity_id
      t.integer :action_id
      t.string :name
      t.text :description

      t.timestamps

    end
  end
end
