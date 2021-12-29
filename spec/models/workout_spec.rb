require 'rails_helper'

RSpec.describe Workout, type: :model do
  subject(:workout) { build(:workout) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:week_num) }
  it { is_expected.to validate_presence_of(:day_num) }
end
