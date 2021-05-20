require "capybara/rspec"

home_page_url = "https://s1.demo.opensourcecms.com/wordpress/wp-login.php?redirect_to=https%3A%2F%2Fs1" +
  ".demo.opensourcecms.com%2Fwordpress%2Fwp-admin%2Fabout.php&reauth=1/eng"

Capybara.run_server = false
Capybara.default_driver = :selenium_chrome
Capybara.app_host = home_page_url

def open_properties_file
  @data = YAML.load_file("properties.yml")
  @login = @data["login"]
  @password = @data["password"]
end
