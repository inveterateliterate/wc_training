class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  # has_many :user_workout_workout_drills
  # has_many :drills, through: :user_workout_workout_drills

  validates_presence_of :date

  scope :for_user, -> (user) { where(user_id: user.id) }
  scope :for_workout, -> (workout) { where(workout_id: workout.id) }
  scope :for_week, -> (week_num) { joins(:workout).merge(Workout.for_week(week_num)) }

  delegate :week_num, to: :workout

  def circuits
    workout.circuits
    # user_workout_drills.joins(:user_workout: [workout: :workout_drills]).order('workout_drills.circuit_number', 'workout_drills.order_in_circuit')
      # .group_by(&:circuit_number)
  end
end
