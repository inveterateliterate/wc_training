class ConditioningSet < ApplicationRecord
  validates_presence_of :run_type

  enum run_type: {
    timed_run: 0, # for a given amount of time
    hundreds_on_the_minute: 1,
    spped_training_yards: 2,
    yard_sets: 3,
    distanced_run: 4, # for given amount of distance
  }
end
