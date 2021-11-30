require 'rails_helper'

RSpec.describe '#Users', type: :request do
  describe 'Authentication /users' do
    it 'has 200 status code if login page' do
      get new_user_session_url
      expect(response).to have_http_status(200)
    end

    it 'has 302 status if redirect to login' do
      get root_url
      expect(response).to have_http_status(302)
    end

    it 'has 200 status if new password' do
      get new_user_password_url
      expect(response).to have_http_status(200)
    end

    it 'has 200 status if registration' do
      get new_user_registration_url
      expect(response).to have_http_status(200)
    end

    it 'has 200 status if user confirmation' do
      get new_user_confirmation_url
      expect(response).to have_http_status(200)
    end

    it 'has 200 status if confirmation success' do
      get user_confirmation_url
      expect(response).to have_http_status(200)
    end
  end
end
