class Drill < ApplicationRecord
  has_many :workout_sets
  has_many :workout, through: :workout_sets
  has_many :user_workout_drills
  # has_many :users, through: :user_workout_drills

  validates_presence_of :drill_type, :num_reps

  enum drill_type: {
    conditioning: 0,
    liting: 1,
  }

  enum run_type: {
    long_run: 0, # for a given amount of time
    hundreds: 1,
    speed_training: 2,
    yard_sets: 3,
    mile_reps: 4, # for given amount of distance
  }

  enum lift_type: {
    arms: 0,
    back: 1,
    legs: 2,
    chest: 3,
    abs: 4,
    total_body: 5,
  }

  enum distance_unit: {
    yards: 0,
    miles: 1,
  }

  enum rep_rest_time_unit: {
    seconds: 0,
    minutes: 1,
  }

  def time_in_minutes(time)
    time * 60
  end
end
