require 'rails_helper'

RSpec.describe WorkoutSetDrill, type: :model do
  subject(:workout_set_drill) { build(:workout_set_drill) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:workout) }
  it { is_expected.to belong_to(:drill) }
end
