class UserWorkoutDrill < ApplicationRecord
  belongs_to :user_workout
  belongs_to :workout_drill

  scope :for_drill, -> (drill) { joins(:workout_drill).merge(WorkoutDrill.for_drill(drill)) }
end
