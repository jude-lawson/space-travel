require 'rails_helper'

RSpec.describe CrewMember do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:rank) }
  end

  describe 'Relationships' do
    it { should belong_to(:ship) }
    it { should belong_to(:homeworld) }
  end
end