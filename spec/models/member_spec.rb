require 'rails_helper'

RSpec.describe Member, type: :model do
  it 'has a valid factory' do
    expect(build(:member)).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :role }
    it { is_expected.to validate_presence_of :description }
  end
end
