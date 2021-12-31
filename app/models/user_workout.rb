class UserWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  has_many :user_workout_drills
  has_many :drills, through: :user_workout_drills

  validates_presence_of :date

  def self.for_user(user)
    find_by(user_id: user.id)
  end
end
