require 'rails_helper'

RSpec.describe Drill, type: :model do
  subject(:drill) { build(:drill) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:drill_type) }
  it { is_expected.to validate_presence_of(:num_reps) }
end
