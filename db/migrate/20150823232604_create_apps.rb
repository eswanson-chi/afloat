class CreateApps < ActiveRecord::Migration[4.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :itunes_id
      t.string :image

      t.timestamps

    end
  end
end
