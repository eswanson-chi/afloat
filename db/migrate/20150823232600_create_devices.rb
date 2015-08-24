class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :manufacturer_id
      t.string :model_number
      t.string :internal_name
      t.string :identifier
      t.string :name
      t.string :image

      t.timestamps

    end
  end
end
