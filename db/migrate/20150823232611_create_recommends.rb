class CreateRecommends < ActiveRecord::Migration[4.2]
  def change
    create_table :recommends do |t|
      t.integer :my_app_id
      t.integer :activity_id
      t.integer :action_id
      t.boolean :is_lifesaver

      t.timestamps

    end
  end
end
