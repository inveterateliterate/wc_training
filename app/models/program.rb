class Program < ApplicationRecord
  has_many :workouts

  validates_presence_of :name
end
