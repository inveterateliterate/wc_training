require 'rails_helper'

RSpec.describe Program, type: :model do
  subject(:program) { build(:program) }

  it { is_expected.to be_valid }

  it { is_expected.to have_many(:workouts) }

  it { is_expected.to validate_presence_of(:name) }
end
