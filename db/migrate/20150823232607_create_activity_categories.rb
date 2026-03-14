class CreateActivityCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :activity_categories do |t|
      t.integer :category_id
      t.integer :activity_id

      t.timestamps

    end
  end
end
