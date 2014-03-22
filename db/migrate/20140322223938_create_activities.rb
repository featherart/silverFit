class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.references :user_id
      t.boolean :completed
      t.string :workout_id
      t.string :date_completed

      t.timestamps
    end
    add_index :activities, :user_id_id
  end
end
