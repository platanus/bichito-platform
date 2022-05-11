require 'rails_helper'

RSpec.describe Challenge, type: :model do
  it 'has a valid factory' do
    expect(build(:challenge)).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :stack }
    it { is_expected.to validate_presence_of :kind }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :difficulty }
  end
end
