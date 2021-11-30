require 'rails_helper'

RSpec.feature '#User signs in', type: :feature do
  describe 'Check if user is login' do
    let(:user) { create(:user, username: 'the_username', password: '12345678') }

    scenario 'With valid credentials' do
      visit new_user_session_path

      fill_in 'Username', with: user.username
      fill_in 'Password', with: user.password
      click_button 'Log in'
      expect(page).to have_text('All artists')
      expect(page).to have_current_path root_path
      expect(page).to have_no_link 'Sign Out'
    end

    scenario 'If logged was failed' do
      user = build :user
      visit new_user_session_path
      fill_in 'Username', with: user.username
      fill_in 'Password', with: user.password
      click_button 'Log in'
      expect(page).to have_text "Sorry, we couldn't find an account with this username. Please check you're using the right username and try again."
    end
  end
end
