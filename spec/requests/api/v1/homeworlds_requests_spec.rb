require 'rails_helper'

RSpec.describe 'Homeworlds Requests' do
  context 'All Homeworlds' do
    it 'should return all homeworlds' do
      homeworlds = create_list(:homeworld, 4)

      get api_v1_homeworlds_path

      response_data = JSON.parse(response.body)

      expect(response).to be_successful
      expect(response_data).to eq(homeworlds.as_json)
    end
  end

  context 'A specific homeworld' do
    it 'should return all of the information about a specific homeworld' do
      homeworld = create(:homeworld)

      get api_v1_homeworld_path(homeworld)

      response_data = JSON.parse(response.body)

      expect(response).to be_successful
      expect(response_data).to eq(homeworld.as_json)
    end
  end
end