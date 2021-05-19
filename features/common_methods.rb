require "capybara/rspec"
require "yaml"
require "./spec_helper"

def login
  open_properties_file
  visit "/"
  get_login_elements
  @login_input.click
  fill_in "Username", with: @login
  @password_input.click
  fill_in "Password", with: @password
  @submit_button.send_keys :enter
end
