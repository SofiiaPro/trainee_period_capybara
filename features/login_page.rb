require "capybara/rspec"

def get_login_elements
  @login_input = find(:xpath, "//input[@id='user_login']")
  @password_input = find(:css, "#user_pass")
  @submit_button = find(:css, "#wp-submit")
  @login = @data["login"]
  @password = @data["password"]
end
