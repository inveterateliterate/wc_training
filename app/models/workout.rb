class Workout < ApplicationRecord
  has_many :users, through: :user_workouts

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
end
