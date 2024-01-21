class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @circuits = @workout.circuits
    @user_workout = UserWorkout.find_by(workout_id: @workout.id, user_id: @current_user.id)
  end
end
