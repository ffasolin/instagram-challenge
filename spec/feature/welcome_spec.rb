require 'rails_helper'

RSpec.feature 'Home page', type: :feature do
  scenario 'contains a welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome to Instagram!'
  end
end
