class UserWorkoutWorkoutDrill < ApplicationRecord
  belongs_to :user
  belongs_to :workout_drill

  # scope :for_user, -> (user) { where(user_id: user.id) }

  # this can not workout if repeating the program over time...
  def self.for_user(user)
    find_by(user_id: user.id)
  end
end
