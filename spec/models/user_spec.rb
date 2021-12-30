require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:email) }

  # it 'should randomly succeed', retry: 3 do
  #   expect(rand(2)).to eq(1)
  # end
end
