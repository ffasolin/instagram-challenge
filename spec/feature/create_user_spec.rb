require 'rails_helper'

RSpec.feature 'Create user', type: :feature do
  scenario 'user can sign up' do
    visit '/'
    fill_in 'user[name]', with: 'User'
    fill_in 'user[username]', with: 'username'
    fill_in 'user[email]', with: 'user@user.com'
    fill_in 'user[password]', with: '12345678'
    click_button 'Sign up'
    expect(page).to have_content 'User, user@user.com'
  end
end
