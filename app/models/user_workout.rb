class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  validates_presence_of :date

  # scope :for_user, -> (user) { where(user_id: user.id) }
  scope :for_workout, -> (workout) { where(workout_id: workout.id) }
  scope :for_week, -> (week_num) { joins(:workout).merge(Workout.for_week(week_num)) }
  scope :for_day, -> (day_num) { joins(:workout).merge(Workout.for_day(day_num)) }

  delegate :week_num, to: :workout
  delegate :circuits, to: :workout

  def self.for_user(user)
    find_by(user_id: user.id)
  end
end
