require 'rails_helper'

RSpec.feature '#Albums /albums ', type: :feature do
  let(:user) { create(:user, username: 'the_user', password: '12345678', role: 'user') }

  let(:admin) { create(:user, username: 'the_admin', password: '12345678', role: 'admin') }
  let(:album) { create(:album) }

  describe 'Album resources' do
    context 'where user is logged' do
      it 'list all albums' do
        visit new_user_session_path
        fill_in 'Username', with: user.username
        fill_in 'Password', with: user.password
        click_button 'Log in'
        visit albums_path
        expect(page).to have_text('All albums')
      end

      it 'Only user can edit and add' do
        visit new_user_session_path
        fill_in 'Username', with: user.username
        fill_in 'Password', with: user.password
        click_button 'Log in'
        visit albums_path
        expect(page).to have_text('You are logged as on use')
        expect(page).to have_text('Edit')
        expect(page).to have_text('New Album')
        expect(page).to have_link(href: '/albums/new')
      end
    end

    context 'where admin is logged' do
      it 'Only admin can delete' do
        visit new_user_session_path
        fill_in 'Username', with: admin.username
        fill_in 'Password', with: admin.password
        click_button 'Log in'
        visit albums_path

        expect(page).to have_text('You are logged as on admin')
        expect(page).to have_text('Remove')
        expect(page).to have_text('New Album')
      end
    end
  end
end
