require 'rails_helper'

RSpec.describe WorkoutDrill, type: :model do
  subject(:workout_drill) { build(:workout_drill) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:workout) }
  it { is_expected.to belong_to(:drill) }

  it { is_expected.to validate_presence_of(:circuit_number) }
  it { is_expected.to validate_presence_of(:order_in_circuit) }
end
