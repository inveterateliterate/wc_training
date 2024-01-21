require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  subject(:admin_user) { build(:admin_user) }

  it { is_expected.to be_valid }

  # it { is_expected.to validate_presence_of(:first_name) }
  # it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
end
