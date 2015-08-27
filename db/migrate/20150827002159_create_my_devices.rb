class CreateMyDevices < ActiveRecord::Migration
  def change
    create_table :my_devices do |t|
      t.integer :device_id
      t.integer :user_id
      t.integer :opsystem_id
      t.string :nickname
      t.boolean :active

      t.timestamps

    end
  end
end
