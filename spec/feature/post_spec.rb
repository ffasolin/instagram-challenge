require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'user can submit a new post' do
    sign_up
    click_link 'New Post'
    fill_in 'post[message]', with: 'Test post!'
    click_button 'Post'
    expect(page).to have_content 'Test post!'
  end
end
