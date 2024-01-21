class UserDrillsController < ApplicationController
  before_action :set_user_drill
  before_action :set_user_workout

  def update
    @user_drill.update(user_drill_params)

    respond_to do |format|
      format.html { redirect_to user_user_workout_path(current_user, @user_workout) }
    end
  end

  private

  def set_user_workout_drill
    @user_workout_drill = UserDrill.find(params[:id])
  end

  def set_user_workout
    @user_workout = @user_drill.user_workout
  end

  def user_drill_params
    @user_drill_params ||= UserDrillDecanter.decant(params[:user_drill])
  end
end
