# require 'rails_helper'
#
# # Specs in this file have access to a helper object that includes
# # the UserHelper. For example:
# #
# # describe UserHelper do
# #   describe "string concat" do
# #     it "concats two strings with spaces" do
# #       expect(helper.concat_strings("this","that")).to eq("this that")
# #     end
# #   end
# # end
# RSpec.describe UserHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

def sign_up
  visit '/'
  fill_in 'user[name]', with: 'User'
  fill_in 'user[username]', with: 'username'
  fill_in 'user[email]', with: 'user@user.com'
  fill_in 'user[password]', with: '12345678'
  click_button 'Sign up'
end
