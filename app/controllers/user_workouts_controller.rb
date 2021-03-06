class UserWorkoutsController < ApplicationController
  def show
    @user_workout = UserWorkout.find(params[:id])
    @circuits = @user_workout.workout.circuits
    @workout_week = UserWorkoutWeek.new(user_workout: @user_workout, user: current_user)
  end
end
