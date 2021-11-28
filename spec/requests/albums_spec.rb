require 'rails_helper'

RSpec.describe '#Albums', type: :request do
  describe 'GET /index' do
    let(:user) { user = build :user }
    let(:login) do
      post user_session_path, params: {
        user: {
          username: user.username, password: user.password
        }
      }
    end

    it 'has 200 if was logged with success' do
      login
      get albums_path
      expect(response).to have_http_status(200)
    end

    it 'has 301 status if user/admin is not logged' do
      get albums_path
      expect(response).to have_http_status(302)
    end
  end
end
