require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'user can submit a new post' do
    sign_up
    click_link 'New Post'
    fill_in 'post[message]', with: 'Test post!'
    attach_file('post[image]', Rails.root + 'spec/support/assets/large-2.jpg')
    click_button 'Post'
    expect(page).to have_content 'Test post!'
  end

  scenario 'are displayed in reversed order' do
    sign_up
    click_link 'New Post'
    fill_in 'post[message]', with: 'Test post 1!'
    attach_file('post[image]', Rails.root + 'spec/support/assets/large-2.jpg')
    click_button 'Post'
    click_link 'New Post'
    fill_in 'post[message]', with: 'Test post 2!'
    attach_file('post[image]', Rails.root + 'spec/support/assets/large-2.jpg')
    click_button 'Post'
    expect(first('p')).to have_content 'Test post 2!'
  end
end
