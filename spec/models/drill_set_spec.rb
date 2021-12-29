require 'rails_helper'

RSpec.describe DrillSet, type: :model do
  subject(:drill_set) { build(:drill_set) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:num_reps) }
end
