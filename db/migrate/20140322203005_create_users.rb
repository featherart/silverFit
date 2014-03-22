class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.float :weight
      t.integer :activity_level
      t.boolean :gender
      t.datetime :deadline

      t.timestamps
    end
  end
end
