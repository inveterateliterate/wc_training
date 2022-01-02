require 'rails_helper'

RSpec.describe UserWorkoutDrill, type: :model do
  subject(:user_workout_drill) { build(:user_workout_drill) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:user_workout) }
  it { is_expected.to belong_to(:workout_drill) }
end
