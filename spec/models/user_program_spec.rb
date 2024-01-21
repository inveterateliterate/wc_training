require 'rails_helper'

RSpec.describe UserProgram, type: :model do
  subject(:user_program) { build(:user_program) }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:program) }
end
