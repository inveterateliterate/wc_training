class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @circuits = @workout.circuits
    # can replace with devise
    @current_user = User.first
    @user_workout = UserWorkout.find_by(workout_id: @workout.id, user_id: @current_user.id)
  end
end
