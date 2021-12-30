class UserWorkoutDrill < ApplicationRecord
  belongs_to :user_workout
  belongs_to :drill
end
