class CreateProjects < ActiveRecord::Migration[4.2]
  def change
    create_table :projects do |t|
      t.integer :owner_user_id
      t.string :name

      t.timestamps

    end
  end
end
