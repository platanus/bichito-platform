require 'rails_helper'

RSpec.describe Goal, type: :model do
  context 'with valid attributes' do
    it { expect(build(:goal)).to be_valid }
  end
end
