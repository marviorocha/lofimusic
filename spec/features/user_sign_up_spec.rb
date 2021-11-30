require 'rails_helper'

RSpec.feature '#User signs in', type: :feature do
  describe 'Check if user is login' do
    let(:user) { build(:user) }

    scenario 'Register user with role of user' do
      visit new_user_registration_path
      fill_in 'Username', with: user.username
      fill_in 'Email', with: user.email
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'
      select 'user', from: 'Role'
      click_button 'Sign up'

      expect(page).to have_text 'You need to sign in or sign up before continuing.'
      expect(page).to have_no_link 'Log in'
    end

    scenario 'Register user with role of administrator' do
      visit new_user_registration_path

      fill_in 'Username', with: user.username
      fill_in 'Email', with: user.email
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'
      select 'admin', from: 'Role'
      click_button 'Sign up'

      expect(page).to have_text 'You need to sign in or sign up before continuing.'
      expect(page).to have_no_link 'Log in'
    end
  end
end
