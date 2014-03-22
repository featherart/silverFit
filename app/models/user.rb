class User < ActiveRecord::Base
  attr_accessible :activity_level, :age, :deadline, :email, :gender, :name, :weight
end
