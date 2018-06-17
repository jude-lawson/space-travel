require 'rails_helper'

RSpec.describe Spaceport do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:galactic_latitude) }
    it { should validate_presence_of(:galactic_longitude) }
  end

  describe 'Relationships' do
    it { should have_many(:starships) }
  end
end