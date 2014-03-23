class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :goal, :string
    add_column :users, :age, :integer
    add_column :users, :weight, :float
    add_column :users, :activity_level, :integer
    add_column :users, :gender, :boolean
    add_column :users, :deadline, :datetime
  end
end
