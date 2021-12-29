require 'rails_helper'

RSpec.describe UserWorkout, type: :model do
  subject(:user_workout) { build(:user_workout) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:workout) }
end
