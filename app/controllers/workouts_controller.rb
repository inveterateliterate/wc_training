class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @circuits = @workout.circuits
  end
end
