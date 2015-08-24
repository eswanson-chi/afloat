class CreateOpsystems < ActiveRecord::Migration
  def change
    create_table :opsystems do |t|
      t.integer :manufacturer_id
      t.string :version_name
      t.boolean :is_current

      t.timestamps

    end
  end
end
