require 'rails_helper'

RSpec.describe Device, type: :model do
  it { is_expected.to validate_presence_of(:device_mac) }
  it { is_expected.to validate_presence_of(:serial_no) }
  it { is_expected.to validate_presence_of(:name) }
end
