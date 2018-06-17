require 'rails_helper'

RSpec.describe 'Spaceports Endpoints' do
  context 'All Spaceports' do
    it 'should show all spaceports' do
      spaceports = create_list(:spaceport, 4)

      get api_v1_spaceports_path
      response_data = JSON.parse(response.body)

      expect(response).to be_successful
      expect(response_data).to eq(spaceports.as_json)
    end
  end
end