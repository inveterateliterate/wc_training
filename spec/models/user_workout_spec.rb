require 'rails_helper'

RSpec.describe UserWorkout, type: :model do
  subject(:user_workouts) { build(:user_workouts) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:workout) }
end
