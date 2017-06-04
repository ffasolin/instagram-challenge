require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'user can submit a new post' do
    sign_up
    click_link 'New Post'
    fill_in 'post[message]', with: 'Test post!'
    attach_file('post[image]', Rails.root + 'spec/support/assets/large-2.jpg')
    click_button 'Post'
    expect(page).to have_xpath("//img[contains(@src,'large-2.jpg')]")
  end
end
