class UserWorkoutDrillsController < ApplicationController
  before_action :set_user_workout_drill
  before_action :set_user_workout

  def update
    @user_workout_drill.update(user_workout_drill_params)

    respond_to do |format|
      format.html { redirect_to @user_workout}
    end
  end

  private

  def set_user_workout_drill
    @user_workout_drill = UserWorkoutDrill.find(params[:id])
  end

  def set_user_workout
    @user_workout = @user_workout_drill.user_workout
  end

  def user_workout_drill_params
    @user_workout_drill_params ||= UserWorkoutDrillDecanter.decant(params[:user_workout_drill])
  end
end
