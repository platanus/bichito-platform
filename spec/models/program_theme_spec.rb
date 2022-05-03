require 'rails_helper'

RSpec.describe ProgramTheme, type: :model do
  context 'with valid attributes' do
    it { expect(build(:program_theme)).to be_valid }
  end
end