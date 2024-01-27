require 'rails_helper'

RSpec.describe Drill, type: :model do
  subject(:drill) { build(:drill) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:circuit) }
  it { is_expected.to have_many(:user_drills) }

  it { is_expected.to validate_presence_of(:exercise_type) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:num_reps) }
  it { is_expected.to validate_presence_of(:position) }
  it { is_expected.to validate_presence_of(:description) }

  it { is_expected.to validate_uniqueness_of(:position).scoped_to(:circuit_id) }
end
