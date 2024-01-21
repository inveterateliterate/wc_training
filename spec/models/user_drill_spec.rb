require 'rails_helper'

RSpec.describe UserDrill, type: :model do
  subject(:user_drill) { build(:user_drill) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:drill) }
end
