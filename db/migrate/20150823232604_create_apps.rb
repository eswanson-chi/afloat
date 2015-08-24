class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :itunes_id
      t.string :image

      t.timestamps

    end
  end
end
