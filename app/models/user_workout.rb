class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  validates_presence_of :date
end
