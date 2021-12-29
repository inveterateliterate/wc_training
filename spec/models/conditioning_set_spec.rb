require 'rails_helper'

RSpec.describe ConditioningSet, type: :model do
  subject(:conditioning_set) { build(:conditioning_set) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:run_type) }
end
