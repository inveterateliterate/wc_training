class UserWorkoutWeek
  attr_reader :user_workout, :user

  def initialize(user_workout:, user:)
    @user_workout = user_workout
    @user = user
  end

  # later a Program model will likely be helpful
  def days_of_the_week
    weeks_user_workouts.pluck(:day_num)
  end

  def workout_for_weekday(day)
    weeks_user_workouts.for_day(day)
  end

  def weeks_user_workouts
    @weeks_user_workouts ||= UserWorkout.for_user(user).for_week(user_workout.workout.week_num)
  end
end
