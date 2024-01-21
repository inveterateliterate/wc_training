require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  it { is_expected.to be_valid }

  it { is_expected.to have_many(:user_programs) }
  it { is_expected.to have_many(:user_workouts) }
  it { is_expected.to have_many(:workouts).through(:user_workouts) }
  it { is_expected.to have_many(:user_drills) }
  it { is_expected.to have_many(:drills).through(:user_drills) }

  it { is_expected.to validate_presence_of(:email) }
end
