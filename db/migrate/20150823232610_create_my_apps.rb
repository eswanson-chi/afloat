class CreateMyApps < ActiveRecord::Migration[4.2]
  def change
    create_table :my_apps do |t|
      t.integer :my_device_id
      t.integer :app_id

      t.timestamps

    end
  end
end
