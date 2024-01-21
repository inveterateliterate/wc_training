class WorkoutDrill < ApplicationRecord
  belongs_to :workout
  belongs_to :drill

  has_many :user_workout_drills
  has_many :users, through: :user_workout_drills

  validates_presence_of :circuit_number, :order_in_circuit

  scope :conditioning, -> { joins(:drill).merge(Drill.conditioning) }
  scope :lifting, -> { joins(:drill).merge(Drill.lifting) }

  scope :for_week, -> (week_num) { joins(:workout).merge(Workout.for_week(week_num)) }
  scope :for_day, -> (day_num) { joins(:workout).merge(Workout.for_day(day_num)) }
  scope :for_drill, -> (drill) { where(drill_id: drill.id) }
end
