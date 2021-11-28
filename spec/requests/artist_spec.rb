require 'rails_helper'


RSpec.describe '#Artists', type: :request do
  describe 'Request HTTP of Artists' do
    let(:api_uri) { URI('https://randomuser.me/api/') }

    it 'queries FactoryGirl contributors on GitHub' do
      uri = api_uri

      response = Net::HTTP.get(uri)

      expect(response).to be_an_instance_of(String)
    end
  end
end
