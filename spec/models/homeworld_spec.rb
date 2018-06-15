require 'rails_helper'

RSpec.describe Homeworld do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:galactic_latitude) }
    it { should validate_presence_of(:galactic_longitude) }
  end

  describe 'Relationships' do
    it { should have_many(:starships) }
    it { should have_many(:captains) }
    it { should have_many(:crew_members) }
    it { should have_many(:spaceports) }
  end
end