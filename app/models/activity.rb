class Activity < ActiveRecord::Base
  belongs_to :user_id
  attr_accessible :completed, :date_completed, :description, :title, :workout_id
end
