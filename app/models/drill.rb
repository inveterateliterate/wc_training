class Drill < ApplicationRecord
  belongs_to :circuit
  has_many :user_drills

  validates_presence_of :exercise_type, :num_reps, :position, :description, :name
  validates_uniqueness_of :position, scope: :circuit_id

  enum exercise_type: {
    conditioning: 0,
    lifting: 1,
  }

  delegate :workout, to: :circuit
end
