require 'rails_helper'

RSpec.feature "Create user", type: :feature do
  scenario 'user can sign up' do
    visit '/'
    fill_in 'users[name]', with: 'User'
    fill_in 'users[username]', with: 'username'
    fill_in 'users[email]', with: 'user@user.com'
    fill_in 'users[password]', with: '123'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome, User!'
  end
end
