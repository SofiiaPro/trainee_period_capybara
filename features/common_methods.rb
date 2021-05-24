require 'capybara/rspec'
require "yaml"
require_relative './spec_helper'

def login
  login_page = LoginPage.new
  open_properties_file
  visit "/"
  login_page.click_on_login_field
  fill_in "Username", with: @login
  login_page.click_on_password_field
  fill_in "Password", with: @password
  login_page.submit_button.send_keys :enter
end
