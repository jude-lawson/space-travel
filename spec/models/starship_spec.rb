require 'rails_helper'

RSpec.describe Starship do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'relationships' do
    it { should belong_to(:spaceport) }
    it { should belong_to(:captain) }
    it { should belong_to(:planet) }
  end
end