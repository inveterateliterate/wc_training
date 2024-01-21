class Circuit < ApplicationRecord
  belongs_to :workout
  has_many :drills

  validates_presence_of :num_reps, :position
  validates_uniqueness_of :position, scope: :workout_id

  delegate :program, to: :workout
end
