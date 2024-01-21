require 'rails_helper'

RSpec.describe Workout, type: :model do
  subject(:workout) { build(:workout) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:program) }
  it { is_expected.to have_many(:user_workouts) }
  it { is_expected.to have_many(:users).through(:user_workouts) }
  it { is_expected.to have_many(:circuits) }
  it { is_expected.to have_many(:drills).through(:circuits) }

  it { is_expected.to validate_presence_of(:week_num) }
  it { is_expected.to validate_presence_of(:day_num) }

  # it { is_expected.to validate_uniqueness_of(:day_num).scoped_to(:week_num, :program_id) }
end
