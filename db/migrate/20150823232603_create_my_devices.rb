class CreateMyDevices < ActiveRecord::Migration
  def change
    create_table :my_devices do |t|
      t.integer :opsystem_id
      t.string :nickename
      t.boolean :active

      t.timestamps

    end
  end
end
