class Workout < ApplicationRecord
  has_many :user_workouts
  has_many :users, through: :user_workouts
  has_many :workout_drills
  has_many :drills, through: :workout_drills

  validates_presence_of :week_num, :day_num

  enum day_num: {
    sunday: 0,
    monday: 1,
    tuesday: 2,
    wednesday: 3,
    thursday: 4,
    friday: 5,
    saturday: 6,
  }

  scope :for_week, -> (week_num) { where(week_num: week_num) }
  scope :for_day, -> (day_num) { where(day_num: day_num) } # to be able to use across other models (might be another way?)

  # can later add this to WorkoutDrill or something
  # shoudl that table be renamed as Circuit?
  NUM_CONDITIONING_SET_REPS = 1 # do each set once
  NUM_LIFTING_SET_REPS = 3 # do each set 3 times (unless between sets)

  def circuits
    workout_drills
      .joins(:drill)
      .order(:circuit_number, :order_in_circuit)
      .group_by(&:circuit_number)
  end

  def title
    "Week #{week_num}: #{day_num.titleize}"
  end
end
