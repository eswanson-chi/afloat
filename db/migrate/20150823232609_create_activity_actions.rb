class CreateActivityActions < ActiveRecord::Migration
  def change
    create_table :activity_actions do |t|
      t.integer :activity_id
      t.integer :action_id

      t.timestamps

    end
  end
end
