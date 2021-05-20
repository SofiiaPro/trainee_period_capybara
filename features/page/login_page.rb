require "capybara/rspec"
require 'capybara/dsl'

class LoginPage
  include Capybara::DSL

  def click_on_login_field
    @login_input = find(:xpath, "//input[@id='user_login']").click
  end

  def click_on_password_field
    @password_input = find(:css, "#user_pass").click
  end

  def get_submit_button
    @submit_button = find(:css, "#wp-submit")
  end
end
