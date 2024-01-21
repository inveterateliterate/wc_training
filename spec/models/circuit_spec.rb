require 'rails_helper'

RSpec.describe Circuit, type: :model do
  subject(:circuit) { build(:circuit) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:workout) }
  it { is_expected.to have_many(:drills) }

  it { is_expected.to validate_presence_of(:num_reps) }
  it { is_expected.to validate_presence_of(:position) }
  it { is_expected.to validate_uniqueness_of(:position).scoped_to(:workout_id) }
end
