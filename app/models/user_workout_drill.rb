class UserWorkoutDrill < ApplicationRecord
  belongs_to :user_workout
  belongs_to :drill

  def self.for_drill(drill)
    find_by(drill_id: drill.id)
  end
end
