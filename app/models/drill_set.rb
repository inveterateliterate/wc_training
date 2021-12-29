class DrillSet < ApplicationRecord
  # has_many :drill_set_drills
  # has_many :drills, through: :drill_set_drills

  validates_presence_of :num_reps
end
